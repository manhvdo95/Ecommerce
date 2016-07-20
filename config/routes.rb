Rails.application.routes.draw do



  get 'page/home'
  get 'page/about'
  get 'page/contact'
  get 'makeAdmin' => 'page#makeAdmin'
  get 'removeAdmin' => 'page#removeAdmin'


  get 'cart/' => 'cart#index'
  get 'cart/clear' => 'cart#clearCart'
  get 'cart/:id' => 'cart#add'


  devise_for :users
  resources :products
 
  root 'products#index'

end
