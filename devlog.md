## 28 September 2021
**.75 project hours**
Created project/co-opted Practice Junk Epsilon for the use of building a Rails version of my React project. Because I'm weird like that.
Created models, migrations, added routes, migrated things.
Created first draft of a User method to find out how many hours the user has worked in a certain medium

## 29 September 2021
**5.5 project hours**
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
Created basic Artwork new view with drop-down menus for style and medium, verified functionality
Added 'hours worked' entry (hard-coded) into user profile for watercolor medium
Verified functionality of medium_hours method in User model

## To-do 
( Put back in <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %> once the rest of it is working to see if the stylesheet path works that way. You're looking for assets/stylesheets/application.css )
Add title and url to Artwork, add display_name to User
Add validation to Artwork model to make sure the hours field is an integer only. Or a float. Check the validation formats. 
Currently media and style are hard-coded into the HTML. In order to make this function better it would probably have to be a separate objects themselves, but if it's good enough for SEEDs it's good enough for this too.
