Shopart::Engine.routes.draw do
  root to: 'orders#cart'
  resources :checkout, controller: 'checkout', only: [:show, :update]
  resources :orders do
    member do
      get :empty_cart
    end
  end
  resources :order_items, only: [:create, :destroy]
end
