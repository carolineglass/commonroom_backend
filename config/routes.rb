Rails.application.routes.draw do
  resources :comments
  resources :post_likes
  resources :posts
  resources :users
  resources :countries
  post '/login', to: 'users#login' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
