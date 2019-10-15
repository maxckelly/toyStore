Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "toys#index", as: "root"
  get "/toy_create", to: "toys#create"
end
