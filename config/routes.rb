Rails.application.routes.draw do
  get 'resevations/index'
  get 'resevations/posts'
  resources :resevations
  
  get 'rooms/index'
  get 'rooms/posts'
  resources :rooms
  
  get 'users/show'
  devise_for :users
  root to: "home#index"
  devise_for :rooms
  
  resources :users, :only => [:show]
end
