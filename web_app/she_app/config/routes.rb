Rails.application.routes.draw do
  get 'welcome/index'

  get 'chat/get_message', to: 'chat#get_message'
  get 'chat/index'
  get 'chat/clev'
  post 'chat/index', to: 'chat#get_message'
  post 'chat/get_message', to: 'chat#print_response'

  get 'facebook/index'

  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  get "/about", to: 'static_pages#about'
  get "/message_setup/", to: "users#message_setup"

  post '/twilio/send_message', to: 'twilio#send_message'
  post '/users/send_message', to: 'users#send_message'
  resources :users

  get '/signed_up', to: 'static_pages#signed_up'
end
