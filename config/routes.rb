Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers:  {
    confirmations:'confirmations',
    registrations: 'registrations' 
  }
  
  root 'home#index'
  get 'home/index'
  get 'home/about'

  resources :deals do
    resources :buyers_stocks
    resources :stocks
  end
end