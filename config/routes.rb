Rails.application.routes.draw do
  
  get 'dashboard/index'

  get 'dashboard/show'

  devise_for :users
  
  resources :search_suggestions
  resources :calculates
  
  
  get 'home/index'
  get 'home/caproi'
  get 'home/cashroi'
  get 'home/mortgage_emi'

  resources :cities
  resources :states
  resources :addresses

  root to: 'navigate#about'
  
  get 'navigate/about'
  get 'navigate/help'
  get 'navigate/terms'
  get 'navigate/privacy'
  get 'navigate/contact'

  post 'properties/search' => 'properties#search', as: 'search_properties'

  resources :ownerships
  resources :contacts
  resources :properties     
  resources :types
  resources :categories
  resources :locations

  resources :searches
end
