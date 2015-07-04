Rails.application.routes.draw do

  get 'dashboard/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  devise_scope :user do
    get 'sign-in', to: 'users/sessions#new'
    get 'sign-out', to: 'users/sessions#destroy'
    get 'register', to: 'users/registrations#new'
  end


  root 'pages#home'

  get 'pages/home'
  get 'pages/about'
end
