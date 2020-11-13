class AddUserRefToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_reference :vacancies, :user, null: false, foreign_key: true
  end
end
