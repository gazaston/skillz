Rails.application.routes.draw do

  root 'users#index'
  resources :slack_responses, only: :create

end
