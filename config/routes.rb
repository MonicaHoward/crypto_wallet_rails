Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  get 'home/about'
  get 'home/search'
  post "/home/search" => 'home#search'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
