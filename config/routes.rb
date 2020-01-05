Rails.application.routes.draw do
  # resources :materiais
  resources :steps
  resources :items
  resources :wikis
  resources :users, param: :_username
  
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  
  # ARTES & MATERIAIS
  get '/materiais', to: 'items#materiais'
  get '/artes', to: 'items#artes'


end
