Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update ]
  resources :users, only: [:show, :edit, :update, :index, :create, :new]




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'homes/about' => 'homes#about', as: 'about'
end
