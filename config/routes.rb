Rails.application.routes.draw do
  get 'broker_transactions/index'
  get 'buyers_transactions/index'
  get 'broker_stocks/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers:  {
    confirmations:'confirmations',
    registrations: 'registrations'
  }

  root 'home#index'
  get 'home/index'
  get 'home/about'
  

  resources :broker_stocks do
    resources :broker_transactions 
  end
  resources :buyers_stocks do
    resources :buyers_transactions
  end
end


  
