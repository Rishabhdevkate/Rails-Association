Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :persons, only: [:index, :create, :show, :update]
  # resources :students#, only: [:index, :create, :show, :update]
  # post "/account_create", to: "students#account_create"
  # resources :products
  # post "/customer_create", to: "products#customer_create"
  # resources :manager
  # post "/department_create", to: "manager#department_create"

  # resources :users
  # resources :students, path: '/profile'
  #  resources :students do
  #   get :initial, on: :collection
  #  end
  resources :students
   
  #  resources :companies

end
