Rails.application.routes.draw do

  resources :slack_responses, only: :create

end
