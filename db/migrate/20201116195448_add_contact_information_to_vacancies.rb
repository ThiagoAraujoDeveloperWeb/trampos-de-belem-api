class AddContactInformationToVacancies < ActiveRecord::Migration[6.0]
  def change
    add_column :vacancies, :contact_information, :string
  end
end
