class AddExpiredToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :expired, :boolean, default: false
  end
end
