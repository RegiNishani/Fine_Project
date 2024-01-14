Rails.application.routes.draw do
  resources :fines
  resources :notifications
  resources :vehicles
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'notifications#index'
end
