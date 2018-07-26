Rails.application.routes.draw do
  root 'posts#index'
  
  get 'posts', to: 'posts#index'
  get 'posts/new'
  get 'posts/show'
  get 'posts/:id', to: 'posts#show'

  post 'posts', to: 'posts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
