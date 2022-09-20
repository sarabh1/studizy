Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard'
  get 'home', to: 'pages#home'
  get 'documents', to: 'pages#documents'


  # get '/courses/:id/', to: 'courses#show'



  resources :courses do
    resources :sessions
  end

  resources :student_courses, only: [ :edit, :update ]
end
