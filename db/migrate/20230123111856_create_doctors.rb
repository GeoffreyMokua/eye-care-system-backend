class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :experience
      t.string :gender
      t.string :image
      t.string :specialist
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
