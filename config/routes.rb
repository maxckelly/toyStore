Rails.application.routes.draw do

  get "/", to: "toys#index", as: "root"
  post "toys", to: "toys#create"
  get "/toy/new", to: "toys#new", as: "new"
  get "/toy/view/:id", to: "toys#view", as: "view"
  delete 'toy/:id', to: 'toys#destroy', as: "delete"
end
