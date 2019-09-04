Rails.application.routes.draw do
  get 'welcome/index'
  resources :todo

  root 'welcome#index'

end
