class Patient < ApplicationRecord
    has_secure_password
    has_one :appointment
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
end
