class RegisterVacanciesController < ApplicationController
  before_action :authorized, except: [:vacancies_total]

  def vacancies
    @vacancies = logged_in_user.vacancies

    render json: { vacancies: @vacancies }
  end

  def create
    @vacancy = Vacancy.create(vacancy_params)

    if @vacancy.valid?
      render json: { vacancy: @vacancy, status: 'success', message: 'Vaga cadastrada com sucesso.' }
    else
      render json: { vacancy: @vacancy, status: 'error',  message: 'Erro ao cadastrar vagam, estamos verificando.' }
    end
  end

  def find_vacancy
    vacancy = logged_in_user.vacancies.find(params[:id])

    render json: { vacancy: vacancy }
  end

  def update
    vacancy = logged_in_user.vacancies.find(params[:id])

    if vacancy.update_attributes(vacancy_params)
      render json: { vacancy: @vacancy, status: 'success', message: 'Vaga atualizada com sucesso.' }
    else
      render json: { vacancy: @vacancy, status: 'error',  message: 'Erro ao atualizar vaga, estamos verificando.' }
    end
  end

  def vacancies_total
    @vacancies = Vacancy.all

    render json: { total_vacancies: @vacancies.size }
  end

  private

  def vacancy_params
    params.permit(:title, :type_vacancy, :description_vacancy,
                  :vacancy_expired, :vacancy_filled, :user_id, :expired)
  end
end
