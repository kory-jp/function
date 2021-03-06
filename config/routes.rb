Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'signup', to: 'users#new'
  resources :users, only: [ :index, :show, :create, :edit, :update ]
end
