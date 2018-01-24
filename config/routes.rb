Rails.application.routes.draw do
  root to: 'pages#landing'

  post 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
