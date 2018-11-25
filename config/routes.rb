# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  root to: 'pages#index'
  devise_for :users
  resources :pages
end
