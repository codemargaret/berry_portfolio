Rails.application.routes.draw do
  devise_for :users

  root :to => 'skills#index'

  resources :skills do
    resources :endorsements
  end

  resources :projects do
    resources :comments
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
