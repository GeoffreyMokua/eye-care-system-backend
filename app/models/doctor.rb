class Doctor < ApplicationRecord
    has_secure_password
    validates :first_name,:last_name,:email,:date_of_birth, :image, :specialist, :experience, :phone_number,:password, presence: true
    validates :email, uniqueness: true
    has_many :appointments, through: :patients
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
    validates :gender, presence: true
end
