Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :todo
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup',  to: 'users#new'
  post '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy', via: :delete

  root 'welcome#index'

end
