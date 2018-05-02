Rails.application.routes.draw do
  root "static_pages#home"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/contact", to: "static_pages#contact"

  resources :trainees
  resources :courses do
    resources :subjects do
      resources :sections do
      end
    end
  end
  resources :course_subjects, only: :create

  namespace :admin do
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    resources :supervisors
    resources :courses do
      resources :subjects do
        resources :sections
      end
    end
  end
end
