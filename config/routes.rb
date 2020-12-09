Rails.application.routes.draw do
  devise_for :users
  root to: "firstlist#index"

  resources :firstlist, only: [:index, :new, :create]
  
end
