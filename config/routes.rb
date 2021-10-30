Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  resources :posts
  get '/profile', to: 'users#profile'
end
