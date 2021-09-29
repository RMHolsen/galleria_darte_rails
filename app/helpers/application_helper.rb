module ApplicationHelper
    def logged_in?
        !!session[:user_id]
        # Returns the session if there is one
    end 

    def current_user 
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        # Returns the current user as an instance variable if there is a session, finding by user.id
    end 

    # def display_name?
    # # In case we want to have a display name as well as a username which, maybe?
    # # We'll see how fancy I want to get with this thing 
    #     @user = User.find(session[:user_id])
    #     if @user.display_name == ""
    #         return false 
    #     else 
    #         return true 
    #     end 
    # end 
end
