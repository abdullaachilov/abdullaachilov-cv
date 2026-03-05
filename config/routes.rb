Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "temp", to: "pages#temp"

  root "pages#home"
end
