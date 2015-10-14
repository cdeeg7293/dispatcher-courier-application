Rails.application.routes.draw do
  root to: "homes#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :clients
  resources :services
  resources :fees
  resources :jobs
  resources :boards

end
