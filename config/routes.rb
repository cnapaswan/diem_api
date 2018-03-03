Rails.application.routes.draw do
  get '/api/users', to: 'users#api_show'
  post '/users/new', to: 'users#create_new_user'
  post '/login', to: 'sessions#user_login'
  delete '/logout', to: 'sessions#user_logout'
  get '/bubbles', to: 'bubbles#user_bubbles'
  get '/user', to: 'sessions#current_user'
  post '/bubble/new', to: 'bubbles#new_bubble'
  get '/', to: 'bubbles#home'
  # resources :bubbles
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
