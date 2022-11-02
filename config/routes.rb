Rails.application.routes.draw do
  resources :orders
  resources :videoboards
  resources :memoryrams
  resources :mainboards
  resources :processors
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
