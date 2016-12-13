Rails.application.routes.draw do
  resources 'artists', only: [:show, :index, :create, :new]
end
