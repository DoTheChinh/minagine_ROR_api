Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "logins#new"
  get "/login", to: "login#new"
  post "/login", to: "login#create"
end
