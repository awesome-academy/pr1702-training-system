Rails.application.routes.draw do
  
  resources :trainees
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/contact', to: 'static_pages#contact'
  root "static_pages#home"
  namespace :admin do
  	get '/login', to: 'sessions#new'
    post '/login',   to: 'sessions#create'
    resources :supervisors
  end
end
