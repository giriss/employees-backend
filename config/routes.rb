# frozen_string_literal: true

Rails.application.routes.draw do
  resources :employees
  resources :job_titles, only: :index
  resources :users, except: %i[index update] do
    post '/login', on: :collection, action: :login
  end
end
