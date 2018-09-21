Rails.application.routes.draw do
  root to: 'users#index'
  resources :posts
  resources :users
  resource :registration, only: [:new, :create]
end
