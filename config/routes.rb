Rails.application.routes.draw do
  # QUERIA USAR RESOURCES ACHO QUE TENTEI DA FORMA ERRADA
  # PS: AINDA NAO CRIEI MODELS NEM MIGRATIONS E NECESSÁRIO PARA SALVAR NO DB?
  # get '/search', to: 'searches#create'
  get '/search', to: 'searches#new'
  post '/search', to: 'searches#show'
end
