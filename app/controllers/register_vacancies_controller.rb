class RegisterVacanciesController < ApplicationController
  before_action :authorized
  def index
  end

  def create
    @vacancy = Vacancy.create(vacancy_params)

    if @vacancy.valid?
      render json: { vacancy: @vacancy, status: 'success', message: 'Vaga cadastrada com sucesso.' }
    else
      render json: { vacancy: @vacancy, status: 'error',  message: 'Erro ao cadastrar vagam, estamos verificando.' }
    end
  end

  private

  def vacancy_params
    params.permit(:title, :type_vacancy, :description_vacancy, :user_id)
  end
end
