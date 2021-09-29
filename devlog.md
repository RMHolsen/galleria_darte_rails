## 28 September 2021
**.75 project hours**
Created project/co-opted Practice Junk Epsilon for the use of building a Rails version of my React project. Because I'm weird like that.
Created models, migrations, added routes, migrated things.
Created first draft of a User method to find out how many hours the user has worked in a certain medium

## 29 September 2021
**3 project hours**
Created git repository and uploaded to GitHub 
Filled out User controller and added validations to model
Added Sessions controller for login/logout
Added helper module with methods logged_in? and current_user and display_name? commented out for future functionality
Added some basic styling to layouts/application and an index page, added Static controller and views 
Added routes for static, login, sign up
Added sign up view, User show view with basic functionality, no gallery display yet, added User profile edit function
Minor bug hunt, verified sign up, login, logout functionality.
Added galleries list to User show page 
Removed index from Galleries controller, filled out remaining functions
Added 'My Profile' link conditional on being logged in, set to current user, to basic application layout functionality
Created basic Gallery show, edit functionality, verified

## To-do 
( Put back in <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %> once the rest of it is working to see if the stylesheet path works that way. You're looking for assets/stylesheets/application.css )