class DashboardController < ApplicationController
  before_action :authorized

  def count_vacancies
    expired = Vacancy.where(expired: true).size

    vacancy_filled = Vacancy.where(vacancy_filled: true).size

    vacancies = Vacancy.where(expired: false, vacancy_filled: false).size

    render json: {
      expired: expired,
      vacancy_filled: vacancy_filled,
      vacancies: vacancies
    }
  end
end