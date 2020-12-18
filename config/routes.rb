Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, only: %i[new create index edit update]
end
