Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  root "items#index"
end
