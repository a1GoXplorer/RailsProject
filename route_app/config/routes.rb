Rails.application.routes.draw do
  get '/', to: "planes#index"

  get '/planes', to: "planes#index"

  get '/planes/new', to: "planes#new"

  get '/planes/:id', to: "planes#show"

  get '/planes/:id/edit', to: "planes#edit"

  post "/planes", to: "planes#create"

  put '/planes/:id', to: "planes#update"


end

