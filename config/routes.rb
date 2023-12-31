Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "about" , to: "about#index"
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  # get "name", to: "organization#new"
  # post "name", to: "organization#create"

  # get "index", to: "organization#index"
  # delete "delete", to: "organization#destroy"
  resources :organizations



  

  root  to: "main#home"
end
