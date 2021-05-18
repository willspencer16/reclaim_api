# frozen_string_literal: true

Rails.application.routes.draw do

  scope '/api/v1' do
    resources :stamps
    resources :rewards do
      resources :userrewards
    end
    resources :users, only: [:create]
    resources :sessions, only: [:create]
    get 'logout', to: 'sessions#destroy', as: 'logout'
  end
end
