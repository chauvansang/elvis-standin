Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get 'sign-in', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
  end
  root 'pages#home'

  get 'pages/home'
  get 'pages/about'
end
