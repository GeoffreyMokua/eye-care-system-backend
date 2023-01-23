class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :patient_id
      t.string :age
      t.string :gender
      t.string :date
      t.string :time
      t.string :doctor_id

      t.timestamps
    end
  end
end
