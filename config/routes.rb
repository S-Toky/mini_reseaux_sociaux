Rails.application.routes.draw do

  resources :offers
  root 'homes#index'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :coordinates
  resources :users do
    resources :relationships, only: [:create]
  end
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
  resources :users, only: [:show] do
    resources :albums, only: [:create]
  end
  resources :relationships, only: [:destroy]
  resources :invitations
  resources :posts
  resources :posts, only: [:show] do
    resources :pictures, only: [:create]
  end
  resources :conversations do
    resources :messages
  end
  resources :posts do
    resources :comments
  end
  resources :posts do
    resources :likes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
