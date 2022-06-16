Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  get "pricing", to: "static_pages#pricing"
  post "checkout/create", to:"checkout#create", as:"checkout_create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "posts#index"
end
