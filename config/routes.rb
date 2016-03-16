Rails.application.routes.draw do
  devise_for :patients
  devise_for :doctors
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :doctor_categories
end
