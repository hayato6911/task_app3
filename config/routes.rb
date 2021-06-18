Rails.application.routes.draw do
  get 'resevations/index'
  get 'room/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "home#index"
  resources :users
  resources :rooms
  get 'rooms/index'
  resources :rooms
  resources :resevations
end
