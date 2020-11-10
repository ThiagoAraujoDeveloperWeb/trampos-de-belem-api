Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:create]

  # ROTAS PARA EMPRESAS

    # post '/cadastrar-anunciante', to: 'users#create'

  # ROTAS ABERTAS PARA CANDIDATADOS
    get '/auto_login', to: 'users#auto_login'

    get '/vacancies', to: 'books#vacancies'

    get '/index', to: 'users#index'

    post '/login', to: 'users#login'
end
