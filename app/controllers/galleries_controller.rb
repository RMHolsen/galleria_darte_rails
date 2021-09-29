class GalleriesController < ApplicationController 
    before_action :set_gallery, only: [:show, :edit, :update, :destroy]

    def index 
        # An index of galleries per user, reasonable to have 
    end 

    def new 
        @gallery = Gallery.new 
    end 

    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def destroy 
    end 

    private 

    def set_gallery 
        @gallery = Gallery.find(params[:id])
    end 

    def gallery_params 
        params.require(:gallery).permit(:name, :description, :user_id)
    end 
end 