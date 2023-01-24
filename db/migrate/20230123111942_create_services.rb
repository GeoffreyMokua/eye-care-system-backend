class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :img
      t.string :description
      t.string :doctor_id
      t.string :cost

      t.timestamps
    end
  end
end
