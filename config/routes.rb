Rails.application.routes.draw do
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }
  get 'pomes/index'
  root to: "pomes#index"
  resources :pomes do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show,:edit,:update]
end
