Rails.application.routes.draw do
  root to: "appointment#index"

  devise_for :users
end
