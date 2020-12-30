Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ROTAS PARA ANUNCIANTES

    # post '/cadastrar-anunciante', to: 'users#create'
    resource :users, only: [:create]

    resource :register_vacancies, only: [:create]

    get '/vacancies_total', to: 'register_vacancies#vacancies_total'

    get '/count_vacancies', to: 'dashboard#count_vacancies'

    get '/vacancies', to: 'register_vacancies#vacancies'

    get '/vacancies_for_candates', to: 'register_vacancies#vacancies_for_candates'

    get '/find_vacancy/:id', to: 'register_vacancies#find_vacancy'

    get '/find_vacancy_public/:id', to: 'register_vacancies#find_vacancy_public'

    put '/update_vacancy/:id', to: 'register_vacancies#update'

    put '/update_vacancy/:id', to: 'register_vacancies#update'

  # ROTAS ABERTAS PARA CANDIDATADOS
    resource :emails_alerts, only: [:create]

    get '/auto_login', to: 'users#auto_login'

    get '/get_advertiser/:id', to: 'users#get_advertiser'

    get '/index', to: 'users#index'

    post '/login', to: 'users#login'
end
