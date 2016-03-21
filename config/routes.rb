Rails.application.routes.draw do

  root 'users#index'
  # resources :slack_responses, only: :create
  resources :slack_responses, only: [:index, :new, :create]
  resources :people, only: [:index, :new, :create]

end
