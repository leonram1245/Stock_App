Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/search'
  get 'home/about'
  get 'broker_transactions/index'
  get 'buyers_transactions/index'
  get 'broker_stocks/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers:  {
    confirmations:'confirmations',
    registrations: 'registrations'
  }

  resources :broker_stocks 
  resources :buyers_stocks
end


  
