Rails.application.routes.draw do
  # get 'homepage/index'
  namespace :api do
    namespace :v1 do
      get 'api_orders/index'
      get 'api_orders/create'
      get 'api_orders/show'
      get 'api_videoboards/index'
      get 'api_videoboards/create'
      get 'api_videoboards/show'
      get 'api_processors/index'
      get 'api_processors/create'
      get 'api_processors/show'
      get 'api_memoryrams/index'
      get 'api_memoryrams/create'
      get 'api_memoryrams/show'
      get 'api_mainboards/index'
      get 'api_mainboards/create'
      get 'api_mainboards/show'
      get 'api_authors/index'
      get 'api_authors/create'
      get 'api_authors/show'
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
  root "homepage#index"
end
