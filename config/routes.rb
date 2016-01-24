Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :proto, only: [:show, :new, :edit, :update]
  resources :tags, only: [:index, :show]
  root 'proto#index'
end
