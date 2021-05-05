Rails.application.routes.draw do
<<<<<<< HEAD
  get 'pending_broker_accounts/index'
=======
  root 'home#index'
  get 'home/index'
  get 'home/search'
  get 'home/about'
>>>>>>> origin/eds-branch
  get 'broker_transactions/index'
  get 'buyers_transactions/index'
  get 'broker_stocks/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers:  {
    confirmations:'confirmations',
    registrations: 'registrations'
  }

<<<<<<< HEAD
  root 'home#index'
  get 'home/index'
  get 'home/search'
  get 'home/about'
  
  resources :broker_stocks 
  resources :broker_transactions 
  resources :buyers_stocks
  resources :buyers_transactions
=======
  resources :broker_stocks 
  resources :buyers_stocks
>>>>>>> origin/eds-branch
end

  
