Lensfinder::Application.routes.draw do

  root :to => "prices#index"

  resources :prices
  resources :retailers
  resources :products

end
