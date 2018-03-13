Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :challenges, only: [:show, :index]
  resources :commitments, only: [:create, :update]
  resources :users, only: [:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
