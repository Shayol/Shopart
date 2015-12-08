Rails.application.routes.draw do

  root to: 'sticks#index'

  resources :sticks
  resources :stones

  mount Shopart::Engine => "/shopart", as: "shopart"
end
