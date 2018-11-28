# frozen_string_literal: true

Rails.application.routes.draw do

  # post '/', to: 'devise/registrations#new'

  devise_for :users
  resources :pages, :posts

  unauthenticated do
    root to: 'pages#index'
  end

  authenticated do
    root to: 'posts#index'
  end

  resources :posts do
    put 'like', to: 'posts#upvote'
    resources :comments
  end
end
