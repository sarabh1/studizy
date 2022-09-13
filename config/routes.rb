Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard'
  get 'home', to: 'pages#home'

  # get 'sessions', to: 'courses#course/sessions'

  resources :courses do
    resources :sessions, controller: 'courses/sessions'
  end
  resources :student_courses
end
