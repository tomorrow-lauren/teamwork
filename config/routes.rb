Rails.application.routes.draw do

  root 'users#index'


  # register/login routes
  get 'profile', to: 'users#show'
  get '/register' => 'users#new', as: 'register'
  post '/register' => 'users#create'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  resources :teams, only: [:index, :show]
  resources :articles do
    resources :comments, only: [:index, :new, :create]
  end
  resources :comments, only: [:show, :edit, :update, :destroy]
end
