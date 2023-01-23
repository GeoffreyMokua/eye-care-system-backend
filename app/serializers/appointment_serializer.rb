class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :age, :gender, :date, :time, :doctor_id
  belongs_to :patient
  belongs_to :doctor
end
