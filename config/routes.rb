Rails.application.routes.draw do

  root 'homes#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :homes, only: [:show]
  resources :clinics, only: [:edit, :update, :index]
  resources :physicians, only: [:edit, :update, :show, :index]
  resources :patients, only: [:edit, :update, :index]
  resources :scripts, only: [:new, :show]
  resource :search, only: [:show, :create]

end
