Rails.application.routes.draw do
  
  root 'welcome#index'
  
  get 'home', to: 'static_pages#home'

  get 'about', to: 'static_pages#about'
  
  get 'faq', to: 'static_pages#faq'

  get 'contacts', to: 'static_pages#contacts'

end