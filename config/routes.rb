Rails.application.routes.draw do
<<<<<<< 95944d8702ea9c205304697358f7d8cae19dcf09
  
  resources :trainees
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/contact', to: 'static_pages#contact'
  root "static_pages#home"
  namespace :admin do
  	get '/login', to: 'sessions#new'
    post '/login',   to: 'sessions#create'
=======
  root "static_pages#home"

  get "/login", to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  get "/contact", to: "static_pages#contact"

  resources :trainees
  resources :courses
  resources :subjects
  resources :sections
  resources :course_subjects, only: [:create]
  
  namespace :admin do
  	get "/login", to: "sessions#new"
    post "/login",   to: "sessions#create"
>>>>>>> Finish View Course , Subject , section
    resources :supervisors
  end
end
