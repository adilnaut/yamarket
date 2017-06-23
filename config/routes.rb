Rails.application.routes.draw do
  get 'product/show'

  get 'product/new'

  get 'product/create'

  get 'product/edit'

  get 'product/update'

  get 'product/destroy'

  get 'static_pages/home'

  get 'static_pages/about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :addresses
  resources :categories
  resources :products
end
