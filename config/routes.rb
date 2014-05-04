Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root 'homes#index'
  resources :homes, only: [:show]
  resources :clinics, only: [:edit, :update, :index]
  resources :physicians, only: [:edit, :update, :show, :index]
  resources :patients, only: [:edit, :update, :index]
  resources :scripts, only: [:new, :show]
  resource :search, only: [:show, :create]
end
