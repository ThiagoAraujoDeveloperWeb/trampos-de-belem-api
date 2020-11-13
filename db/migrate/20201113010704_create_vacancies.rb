class CreateVacancies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :type_vacancy
      t.text :description_vacancy

      t.timestamps
    end
  end
end
