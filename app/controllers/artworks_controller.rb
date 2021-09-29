class ArtworksController < ApplicationController 
    before_action :set_artwork, only: [:show, :edit, :update, :destroy]

    def index 
    end 

    def new 
        @gallery = Gallery.find(params[:gallery_id])
        @artwork = Artwork.new
    end 

    def create
        @artwork = Artwork.new(artwork_params)
        @gallery = Gallery.find(params[:gallery_id])
        @artwork = @gallery.artworks.build(artwork_params)
        # Note to self: if you don't have validations you can't use if @artwork.valid
        # (Which probably means a validation needs to be added for the hours field to be an integer only)
        # We can do that later.
        if @artwork.save 
            redirect_to @gallery 
        else 
            redirect_to user_path(@gallery.user)
        end 
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

    def gallery_params
        params.require(:gallery).permit(:name, :description, :user_id)
    end 

    def set_artwork 
        @artwork = Artwork.find(params[:id])
    end 

end 