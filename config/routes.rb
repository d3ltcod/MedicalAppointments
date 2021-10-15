Rails.application.routes.draw do
  root to: "appointments#index"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :appointments, only: [:index, :show, :create]
  get '/appointments/new/:id', to: 'appointments#new'

  get '/directory', to: 'directories#index'
end
