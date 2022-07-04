Rails.application.routes.draw do
  devise_for :users 
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :comments, only: [:create, :show]
  resources :users, only: :show
end
