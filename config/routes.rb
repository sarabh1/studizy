Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard'
  get 'home', to: 'pages#home'

  resources :courses
  resources :student_courses
end
