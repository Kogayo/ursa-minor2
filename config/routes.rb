Rails.application.routes.draw do
  get 'user/index'
  devise_for :users

  root to: 'bear#index'

  resources :bear 
  resources :contact, only: [:index] do
    post '/', action: :create_inquiry, on: :collection
  end
  resources :community, only: [:index]
end

  # get 'contact/index'
  # get 'community/index'
