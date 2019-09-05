Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :todo
  resources :users

  root 'welcome#index'

end
