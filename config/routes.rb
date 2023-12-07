Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
    # get "/students", to: "students#index"
  # root "students#index"

  resources :users, only: [:index, :show, :create, :update, :destroy]

  get "/users/hello", to: "users#hello"

end
