Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  
end
