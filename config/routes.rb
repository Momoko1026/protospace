Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  resources :prototypes, only: [:show, :new, :edit]
  reources :tags, only: [:index :show]
  root 'prototypes#index'
end
