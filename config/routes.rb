Rails.application.routes.draw do
  get 'menu_pages/home'
  get 'menu_pages/help'
  get 'menu_pages/about'
  resources :microposts
  resources :users
  resources :following
  resources :followers
  resources :relationship
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
end
