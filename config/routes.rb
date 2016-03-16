Rails.application.routes.draw do
  devise_for :patients, :path_names => {:sign_up => "sign_up"},:controllers => {:registrations => "patients/registrations"}
  devise_for :doctors, :path_names => {:sign_up => "sign_up"},:controllers => {:registrations => "doctors/registrations"}
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :doctor_categories
end
