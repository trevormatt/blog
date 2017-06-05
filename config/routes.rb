Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]

  root 'welcome#index'
end
