Rails.application.routes.draw do

  get '/join' => 'users#join'
  post '/join' => 'users#create'

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#delete'

  post '/write' => 'timeline#create'
  post '/comment' => 'timeline#comment'

  get '/my/:id' => 'pages#user_page'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
