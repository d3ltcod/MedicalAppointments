Rails.application.routes.draw do
  root to: "appointments#index"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :appointments, only: [:index, :show]

  get '/directory', to: 'patients#index'
end
