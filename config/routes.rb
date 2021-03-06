# frozen_string_literal: true
Rails.application.routes.draw do

  resources :appointments
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :patients, except: [:new, :edit]
  resources :users, only: [:index, :show]
  resources :doctors, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
end
