# frozen_string_literal: true

Rails.application.routes.draw do
  resources :formation_sports
  resources :situation_sports
  resources :formations
  resources :situations
  resources :side_sports
  resources :sides
  resources :sports
  resources :dashboard, only: [:index]
  devise_for :users
end
