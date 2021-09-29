class SessionsController < ApplicationController
    # NO OMNIAUTH IT IS BAD AND IT SHOULD FEEL BAD

    def new 
        @user = User.new 
        render :login 
    end 

    def create 
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to @user 
        else 
            redirect_to root_path 
            # Flash error message goes here if I feel like practicing my rack-flash 
        end
    end 

    def destroy
        session.clear 
        redirect_to root_path 
    end 
end 