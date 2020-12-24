Rails.application.routes.draw do
  devise_for :users
  root to: "firstlists#index"

  resources :firstlists do
    member do
      get "auto_select"
    end
  end
  
end
