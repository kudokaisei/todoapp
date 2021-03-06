Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"
  resources :tasks, only: [:index]
  resources :jobs
  resources :families
  resources :routines
  resources :others
  resources :users, only: [:edit, :update]
end
