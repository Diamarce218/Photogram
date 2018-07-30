Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  
  get 'posts', to: 'posts#index'
  get 'posts/new'
  get 'posts/:id', to: 'posts#show', as: 'posts_show'
  
  post 'posts', to: 'posts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
