Rails.application.routes.draw do

  #get 'users/profile'

  devise_for :users

  root 'posts#index'
  get 'posts', to: 'posts#index' #to: 'controlador#metodo'
  get 'posts/new'
  get 'posts/:id', to: 'posts#show', as: 'posts_show'
  get 'users/:username', to: 'users#profile', as: 'profile' #controlador vista

  post 'posts', to: 'posts#create'
  post 'posts/:id/comments', to: 'comments#create', as: 'comments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end