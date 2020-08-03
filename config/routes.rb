Rails.application.routes.draw do
  resources :organizations do
    member do
      get :confirm_deletion
    end
  end

  post '/login', to: 'home#login', as: :login
  post '/logout', to: 'home#logout', as: :logout
  post '/name', to: 'home#name', as: :name

  root to: 'home#index'
end
