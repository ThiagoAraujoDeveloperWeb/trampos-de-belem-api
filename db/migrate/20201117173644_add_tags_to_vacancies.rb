class AddTagsToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :tags, :string, array: true, default: []
  end
end
