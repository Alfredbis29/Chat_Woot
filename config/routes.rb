Rails.application.routes.draw do
  get 'home/index'
  get 'articles/:slug', to: 'articles#show', as: 'article'
  get 'search', to: 'home#search', as: 'search'
  get 'contact', to: 'home#contact', as: 'contact'
  resources :categories, only: [:index, :new, :create]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
