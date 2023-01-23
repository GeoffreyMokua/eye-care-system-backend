# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying"


Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Service.destroy_all


puts "Done destroying"

puts "Seeding..."


patient1 = Patient.create(
    first_name: "Luke",
    last_name: "Shaw",
    password: "3456766",
    phone_number: "0786746537",
    email: "lukeshaw@gmail.com",
    date_of_birth: "20201196",
    
)
patient2 = Patient.create(
    first_name: "Darwin",
    last_name: "Ken",
    password: "125346",
    phone_number: "0754372656",
    email: "lewisdarwin@gmail.com",
    date_of_birth: "12121997",
    
)
patient3 = Patient.create(
    first_name: "Timothy",
    last_name: "Rogers",
    password: "mkjr12",
    phone_number: "0754372656",
    email: "timothy@gmail.com",
    date_of_birth: "10121998",
    
)



























puts "Seeding is Complete"