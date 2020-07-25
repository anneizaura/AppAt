Rails.application.routes.draw do
  get '/', to: 'searches#new'
  post '/search', to: 'searches#show'
  get '/create', to: 'searches#create'
end
