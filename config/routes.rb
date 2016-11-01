Rails.application.routes.draw do
  root 'users#index'

  # register/login routes
  get 'profile', to: 'users#show'
  get '/register' => 'users#new', as: 'register'
  post '/register' => 'users#create'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  resources :teams, only: [:index, :show] do
    resources :articles do
      resources :comments
    end
  end
end
