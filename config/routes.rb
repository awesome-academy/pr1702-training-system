Rails.application.routes.draw do
  root "static_pages#home"

  resources :trainees
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/contact", to: "static_pages#contact"

  namespace :admin do
    resources :supervisors
  end
end
