Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  get 'items/new'
  get 'items/show'
  root "items#index"
end
