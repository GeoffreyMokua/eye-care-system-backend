class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
       t.string :password_digest
      t.string :email
      t.string :date_of_birth
      t.string :phone_number
     

      t.timestamps
    end
  end
end
