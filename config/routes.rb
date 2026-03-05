Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "temp", to: "pages#temp"
  get "temp1", to: "pages#temp1"
  get "temp2", to: "pages#temp2"
  get "temp3", to: "pages#temp3"
  get "temp4", to: "pages#temp4"

  root "pages#home"
end
