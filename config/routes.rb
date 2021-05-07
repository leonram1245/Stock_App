Rails.application.routes.draw do
  get 'pending_broker_accounts/index'
  get 'broker_stocks/index'
  get 'buyers_stocks/available_stocks'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers:  {
    confirmations:'confirmations',
    registrations: 'registrations'
  }

  root 'home#index'
  get 'home/index'
  get 'home/search'
  get 'home/about'
  
  resources :broker_stocks 
  resources :buyers_stocks


end

  
