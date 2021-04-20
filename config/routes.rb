Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
 
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'
  get 'home/index'

  resources :brokers
  resources :buyers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end