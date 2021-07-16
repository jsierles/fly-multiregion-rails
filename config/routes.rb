Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "fly#show"
  get :fly, to: "fly#show"
  post :write, to: "fly#write"
  post :exception, to: "fly#exception"
end