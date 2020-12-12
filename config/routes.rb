Rails.application.routes.draw do
  devise_for :users
  root to: "firstlists#index"

  resources :firstlists, only: [:index, :new, :create, :show]
  
end
