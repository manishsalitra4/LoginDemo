Rails.application.routes.draw do
  root "submissions#new"
  post "/submit", to: "submissions#create", as: :submit
  get "/admin", to: "admin#index", as: :admin
end
