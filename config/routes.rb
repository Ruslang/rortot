Rails.application.routes.draw do

  root  'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'

  match '/faq', to: 'static_pages#faq', via: 'get'

  match '/contacts', to: 'static_pages#contacts', via: 'get'

end
