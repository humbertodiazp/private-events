Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :events, :users
  root to: 'events#/index'
end
