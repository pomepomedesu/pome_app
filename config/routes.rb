Rails.application.routes.draw do
  get 'pomes/index'
  root to: "pomes#index"
end
