class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :date_of_birth
      t.string :experience
      t.string :gender
      t.string :img
      t.string :specialist
      t.string :email
     
      

      t.timestamps
    end
  end
end
