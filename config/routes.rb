Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :events, only: [:index, :create]
  root to: 'events#/index'
end
