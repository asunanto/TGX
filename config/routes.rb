Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  resources :charges
  get 'home/index'
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
