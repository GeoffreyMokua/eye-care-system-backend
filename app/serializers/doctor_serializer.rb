class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :experience, :gender, :img, :specialist, :email, :password
  # has_many :appointments
  # has_many :services
end
