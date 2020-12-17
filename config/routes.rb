Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/new'
  root to: 'users#index'
  resources :users, only: [:new, :create]
end
