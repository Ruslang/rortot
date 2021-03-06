Rails.application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root  'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'
  match '/faq', to: 'static_pages#faq', via: 'get'
  match '/contacts', to: 'static_pages#contacts', via: 'get'
  match '/radar', to: 'static_pages#radar', via: 'get'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

end
