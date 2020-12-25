Rails.application.routes.draw do
  root to: "firstlists#index"
  devise_for :users

  devise_scope :user do
    post 'users/sign_in/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :firstlists do
    member do
      get "auto_select"
    end
  end
  
  
end
