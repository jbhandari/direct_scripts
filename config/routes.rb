Rails.application.routes.draw do

 root 'homes#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :homes, only: [:show]
  resource :patient_finders, only: [:new]
  resource :search, only: [:show, :create]

  resources :pharmacists, only: [:edit, :update, :index]
  resources :physicians, only: [:edit, :update, :show, :index]
  resources :patients, only: [:edit, :update, :show, :index] do
    resources :scripts, only: [:new, :create, :show]
  end
end
