Rails.application.routes.draw do
  resources :lineitems
  resources :orders
  get 'addresses/create'

  get 'addresses/destroy'

  resources :users do
  member do
    get 'get_addresses'
  end
end

  get 'home/index'

  resources :categories
  resources :products

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
