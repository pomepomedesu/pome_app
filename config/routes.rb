Rails.application.routes.draw do
  devise_for :users
  get 'pomes/index'
  root to: "pomes#index"
  resources :pomes
  resources :users, only: [:edit,:update]
end
