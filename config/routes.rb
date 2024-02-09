# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # Application
  resources :favorites, only: [:index, :create, :destroy]
  get 'contact' => 'contacts#index', as: :contact
  get 'referral' => 'referrals#index', as: :referral
end
