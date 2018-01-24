Rails.application.routes.draw do
  root to: 'pages#landing'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  scope '/admin' do
    get '/', to: 'admin#index', as: :admin
    get 'create', to: 'admin#create', as: :adminCreate
    post 'store', to: 'admin#store', as: :adminStore
    get 'show/:id', to: 'admin#show', as: :adminShow
    get 'destroy/:id', to: 'admin#destroy', as: :adminDestroy
  end

  scope '/api' do
    get 'unsurs', to: 'api#all'
    get 'unsur/:id', to: 'api#show'
    get 'search/:key', to: 'api#search'
    get 'golongan/:golongan', to: 'api#golongan'
    get 'periode/:periode', to: 'api#periode'
  end
end
