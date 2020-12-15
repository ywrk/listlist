Rails.application.routes.draw do
  devise_for :users
  root to: "firstlists#index"

  resources :firstlists
  
end
