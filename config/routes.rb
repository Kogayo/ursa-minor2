Rails.application.routes.draw do
  devise_for :users

  root to: 'bear#index'

  resources :bear 
  resources :contact, only: [:index]
  resources :community, only: [:index]
  
end

  # get 'contact/index'
  # get 'community/index'
