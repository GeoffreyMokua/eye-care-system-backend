class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :date_of_birth, :phone_number
  has_one :appointment
end
