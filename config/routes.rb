Rails.application.routes.draw do
  get "cart/show"
  get "cart/add"
  get "cart/remove"
  get "cart/clear"
  root "products#index"
  
  resources :products, only: [:index, :show]
  
  # Cart routes
  post 'cart/add/:id', to: 'cart#add', as: 'add_to_cart'
  get 'cart', to: 'cart#show', as: 'cart'
  delete 'cart/remove/:id', to: 'cart#remove', as: 'remove_from_cart'
  delete 'cart/clear', to: 'cart#clear', as: 'clear_cart'
end