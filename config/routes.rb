Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users
  root 'home#index'
  get 'home/index'

  resources :buyers_stocks
  resources :stocks
end