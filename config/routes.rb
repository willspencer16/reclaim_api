# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api/v1' do
    resources :stamps
    resources :sessions, only: [:create]
  end
end
