class AddVacancyFilledToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :vacancy_filled, :boolean, default: false
  end
end
