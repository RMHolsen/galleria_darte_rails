class GalleriesController < ApplicationController 
    before_action :set_gallery, only: [:show, :edit, :update, :destroy]

    # def index 
    #     # An index of galleries per user, reasonable to have 
    #     # Never mind we've put this in the user view
    # end 

    def new 
        @gallery = Gallery.new 
    end 

    def create 
        @gallery = Gallery.new(gallery_params)
        if @gallery.valid? 
            @gallery.save 
        else 
            # something 
        end 
    end 

    def edit 
    end 

    def update 
        if @gallery.update(gallery_params)
            redirect_to @gallery
        else 
            # something errors 
        end 
    end 

    def destroy 
        @gallery.destroy 
        redirect_to root_path 
    end 

    private 

    def set_gallery 
        @gallery = Gallery.find(params[:id])
    end 

    def gallery_params 
        params.require(:gallery).permit(:name, :description, :user_id)
    end 
end 