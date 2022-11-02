Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'orders/index'
      get 'orders/create'
      get 'orders/show'
      get 'videoboards/index'
      get 'videoboards/create'
      get 'videoboards/show'
      get 'processors/index'
      get 'processors/create'
      get 'processors/show'
      get 'memoryrams/index'
      get 'memoryrams/create'
      get 'memoryrams/show'
      get 'mainboards/index'
      get 'mainboards/create'
      get 'mainboards/show'
      get 'authors/index'
      get 'authors/create'
      get 'authors/show'
    end
  end
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
