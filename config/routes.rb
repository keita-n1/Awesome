Rails.application.routes.draw do
  devise_for :users
  resources :coordinates, only: [:index, :new, :create, :show]
  resources :users, only: [:new, :create, :show, :edit, :update]
  root "coordinates#index"
end
