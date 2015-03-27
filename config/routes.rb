Rails.application.routes.draw do

  resources :users

  root  'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'
  match '/faq', to: 'static_pages#faq', via: 'get'
  match '/contacts', to: 'static_pages#contacts', via: 'get'
  match '/signup', to: 'users#new', via: 'get'

end
