class ArtworksController < ApplicationController 
    before_action :set_artwork, only [:show, :edit, :update, :destroy]

    def index 
    end 

    def new 
        @artwork = Artwork.new
        @gallery = Gallery.find(params[:id])
    end 

    def create
    end 

    def show 
    end 

    def edit 
    end 

    def update
    end 

    def destroy 
    end

    private 

    def artwork_params 
        params.require(:artwork).permit(:gallery_id, :medium, :style, :subject, :hours)
    end 

    def set_artwork 
        @artwork = Artwork.find(params[:id])
    end 

end 