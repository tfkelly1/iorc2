Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users,  :controllers => { :registrations => "users/registrations" }
  resources :users

  resources :regions

  resources :titles

  resources :references

  resources :publications

  resources :counties

  resources :birds

  resources :taxons

  resources :statuses

  resources :records
  
  root :to => 'records#index'
end
