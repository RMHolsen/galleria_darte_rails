class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    # def index 
    #     # Probably not actually necessary unless we want to display an index of user galleries
    #     # Also would be a good place to work on the public/private display toggle. 
    #     # Taking this out for now
    # end 

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new(user_params)
        # Create user with the following params
        # Validations only require username and password 
        if @user.valid? 
            @user.save 
            session[:user_id] = @user.id 
            redirect_to @user 
        else 
            render :new 
        end 
    end 

    def show 
    end 

    def edit
        # For a user to edit their user profile
    end 

    def update 
        if @user.update(user_params)
            redirect_to @user 
        else 
            render :edit 
        end 
    end 

    private 

    def set_user
        @user = User.find(params[:id])
    end 

    def user_params 
        params.require(:user).permit(:username, :password, :profile)
    end 
end 