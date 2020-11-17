class AddNameUserPublishToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :name_user_publish, :string
  end
end
