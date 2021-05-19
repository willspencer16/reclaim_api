# frozen_string_literal: true

Rails.application.routes.draw do



  scope '/api/v1' do 
    resources :items
    resources :stamps
    resources :rewards
    resources :user_rewards
    resources :users, only: [:create]
    resources :sessions, only: [:create]
    post 'authenticate', to: 'authentication#authenticate'
    get 'logout', to: 'sessions#destroy', as: 'logout'
  end
end
