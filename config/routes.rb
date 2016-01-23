Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :prototypes, only: [:show, :new, :edit, :update]
  reources :tags, only: [:index :show]
  root 'prototypes#index'
end
