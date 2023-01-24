class Doctor < ApplicationRecord
    has_secure_password
    validates :first_name,:last_name,:email,:date_of_birth, :img, :specialist, :experience, :password, presence: true
    validates :email, uniqueness: true
    # has_many :appointments, through: :patients
    validates :password, length: {minimum: 5}
    validates :gender, presence: true
end
