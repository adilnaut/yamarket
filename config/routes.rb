Rails.application.routes.draw do
  get 'category/create'

  get 'category/destroy'

  get 'category/show'

  root "static_pages#home"


  get "/about", to: "static_pages#about"
  get "/new", to: "products#new"
  post "new", to: "products#create"
  delete "delete", to: "products#destroy"
  get "/edit", to: "products#edit"
  post "edit", to: "products#update"
  get "/categories/new", to: "categories#new"
  post "/categories/new", to: "categories#create"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :addresses
    resources :categories
    resources :products


end
