Rails.application.routes.draw do




  get "/about", to: "static_pages#about"
  get "/new", to: "products#new"
  post "new", to: "products#create"
  delete "products", to: "products#destroy"
  get "/edit", to: "products#edit"
  post "edit", to: "products#update"
  get "/categories/new", to: "categories#new"
  post "/categories/new", to: "categories#create"
  delete "categories", to: "categories#destroy"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :addresses
  resources :categories

  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

end
