Rails.application.routes.draw do
  get 'dashboard/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :dashboard, only: [:index]
  devise_for :users, controllers:  {
    confirmations:'confirmations'
  }
  root 'home#index'
  get 'home/index'

  resources :buyers_stocks
  resources :stocks
end