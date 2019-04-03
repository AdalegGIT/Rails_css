class PicturesController < ApplicationController
    #shows all the data
    def index
     @images = Picture.all
    end
  
    #method to show the form to create
    def new
        @picture = Picture.new
    end
    
    #method to create new record
    def create
        # Picture.create(title: params["title"],
        #      artist: params["artist"],
        #      url: params["url"])

        #      redirect_to pictures_url
     
        p "...................................#{picture_params}"
        @picture = Picture.new(picture_params)
        if @picture.save
          # if the save for the picture was successful, go to index.html.erb
          redirect_to pictures_url
        else
          # otherwise render the view associated with the action :new (i.e. new.html.erb)
          render :new
        end
    end
    #shows the form to edit
    def edit
        @image = Picture.find(params[:id])
    end
  
    #shows individual info
    def show
        @image = Picture.find(params[:id])
    end
  
    def destroy
        @picture = Picture.find(params[:id])
        @picture.destroy
        redirect_to pictures_url
    end
  
    def update
        @picture = Picture.find(params[:id])

        if @picture.update_attributes(picture_params)
          redirect_to "/pictures/#{@picture.id}"
        else
          render :edit
        end
    end

    private
    def picture_params
      params.require(:picture).permit(:artist, :title, :url)
    end

end
