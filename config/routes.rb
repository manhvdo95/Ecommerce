Rails.application.routes.draw do

  get 'page/about'
  get 'page/contact'

  get 'cart/' => 'cart#index'
  get 'cart/clear' => 'cart#clearCart'
  get 'cart/:id' => 'cart#add'

  devise_for :users
  resources :products
 
  root 'products#index'

end
