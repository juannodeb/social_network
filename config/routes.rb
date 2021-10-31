Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  resources :comments do
    member do
      put :set_dislike
      put :set_like
    end
  end
  resources :interactions, only: [:create, :destroy]
  resources :posts do
    member do
      put :set_dislike
      put :set_like
    end
  end

  get '/profile', to: 'users#profile'
end
