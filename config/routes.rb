Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  get 'items/show'
  root "items#index"
end
