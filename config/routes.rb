Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments, only: [ :create, :destroy ]
    resources :post_options, only: [ :new, :create, :edit, :update, :destroy ] do
      resources :post_votes, only: [ :create ]
    end
  end
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
end
