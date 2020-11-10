class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :fullName
      t.string :contactPhone
      t.string :email
      t.string :nameCompany
      t.string :companyDescription
      t.string :companyWebsite
      t.string :city

      t.timestamps
    end
  end
end
