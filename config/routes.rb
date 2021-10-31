Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  resources :comments
  resources :interactions, only: [:create, :destroy]
  resources :posts

  get '/profile', to: 'users#profile'
end
