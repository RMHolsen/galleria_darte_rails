class UsersController < ApplicationController
    before_action :set_user, only: [???]

    def index 
        # Probably not actually necessary unless we want to display an index of user galleries
        # Also would be a good place to work on the public/private display toggle. 
    end 

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new(user_params)
    end 

    def edit
        # For a user to edit their user profile
    end 

    def update 
    end 

    private 

    def set_user
        # Yeah I'm just going on autopilot at this point
        @user = User.find(params[:id])
    end 

    def user_params 
        params.require(:user).permit(:username, :password, :profile)
    end 
end 