Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "temp", to: "pages#temp"
  get "temp1", to: "pages#temp1"
  get "temp2", to: "pages#temp2"
  get "temp3", to: "pages#temp3"
  get "temp4", to: "pages#temp4"
  get "temp5", to: "pages#temp5"
  get "temp6", to: "pages#temp6"
  get "temp7", to: "pages#temp7"
  get "temp8", to: "pages#temp8"
  get "temp9", to: "pages#temp9"

  root "pages#home"
end
