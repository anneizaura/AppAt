Rails.application.routes.draw do
  resources :search, only: [:create, :new, :show]
end
