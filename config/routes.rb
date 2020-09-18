Rails.application.routes.draw do
  devise_for :users
  get 'pomes/index'
  root to: "pomes#index"
  resources :pomes do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show,:edit,:update]
end
