Rails.application.routes.draw do
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  devise_for :users
  get 'pomes/index'
  root to: "pomes#index"
>>>>>>> Stashed changes
end
