Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "fake_log_in", to: 'pages#fake_log_in', as: :fake_log_in

  resources :posts do
    resources :comments, only: [ :create, :destroy ]
    resources :post_options, only: [ :new, :create, :edit, :update, :destroy ] do
      resources :post_votes, only: [ :create ]
    end
  end

  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  # API

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'users/:user_id/notifications', to: 'users#notifications_count'
    end
  end
end
