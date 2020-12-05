Rails.application.routes.draw do
  root to: "firstlist#index"

  resources :firstlist, only: [:index]
  
end
