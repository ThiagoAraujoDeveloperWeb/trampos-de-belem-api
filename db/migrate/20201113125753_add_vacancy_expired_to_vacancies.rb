class AddVacancyExpiredToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :vacancy_expired, :date
  end
end
