Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # Creating new users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # Creating and destroying sessions, i.e. logging in and out

  resources :galleries do 
    resources :artworks 
    # Nesting artworks under galleries 
  end 

  root 'static#index'
end
