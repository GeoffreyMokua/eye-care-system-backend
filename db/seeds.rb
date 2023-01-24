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


doctor1 = Doctor.create(
        first_name: "Dr. Iqbal",
        last_name: "Jafor",
        password: "mhyr678",
        email: "jafor@gmail.com",
        img:"https://image.freepik.com/free-photo/hospital-healthcare-workers-covid-19-treatment-concept-young-doctor-scrubs-making-daily-errands-clinic-listening-patient-symptoms-look-camera-professional-physician-curing-diseases_1258-57233.jpg",
        date_of_birth: "10121989",
        experience: "10",
        specialist:"Ratina",
        gender: "Male",
       
)
 doctor2 = Doctor.create(  
        first_name: "Dr. Farhana",
        last_name: "Jaman",
        password: "mkuj876",
        email: "jaman@gmail.com",
        img:"https://image.freepik.com/free-photo/medical-workers-covid-19-vaccination-concept-confident-professional-doctor-female-nurse-blue-scrubs-stethoscope-show-thumbs-up-assure-guarantee-best-quality-service-clinic_1258-57360.jpg",
        date_of_birth: "10121988",
        experience: "10",
        specialist:"Blue Light and Lense",
        gender: "Male",
        
 )
doctor3 = Doctor.create(  
        first_name: "Dr. Ahsan",
        last_name: "Raza", 
        password: "mhy678",
        email: "raza@gmail.com",
        img:"https://image.freepik.com/free-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-enthusiastic-smiling-male-doctor-glad-help-patients-physician-white-coat-happy-working-clinic-hospital_1258-57450.jpg",
        date_of_birth: "10121984",
        experience: "13",
        specialist:"Children Light",
        gender: "Male",
     
)
doctor4 = Doctor.create(  
        first_name: "Dr. Jafar",
        last_name: "Mallik", 
        password: "mk4537",
        email: "mallik@gmail.com",
        img:"https://image.freepik.com/free-photo/portrait-smiling-male-doctor_171337-1532.jpg",
        date_of_birth: "10121985",
        experience: "10",
        specialist:"Lense",
        gender: "Female",
      
)
doctor5 = Doctor.create(
        first_name: "Dr. Mahmuda",
        last_name: "Akther",
        password: "mk7865",
        email: "akther@gmail.com",
        img:"https://image.freepik.com/free-photo/front-view-covid-recovery-center-female-doctor-with-posing-with-stethoscope_23-2148847898.jpg",
        date_of_birth: "10121986",
        experience: "8",
        specialist:"Lasik",
        gender: "Male",
)

doctor6 = Doctor.create(
        first_name: "Dr. Ahmed",
        last_name: "Wasif",
        password: "mk2345",
        email: "wasig@gmail.com",
        img:"https://image.freepik.com/free-photo/portrait-successful-mid-adult-doctor-with-crossed-arms_1262-12865.jpg",
        date_of_birth: "10121980",
        experience: "11",
        specialist:"Eye Therapy",
        gender: "Male",
    
)


service1 = Service.create(
    doctor_id: doctor1.id,
    img: "https://images.unsplash.com/photo-1599114317549-8d4e5233021f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80",
    name: "Contact Lenses",
    description: "If you are tired of wearing glasses, contact lenses may be right for you. Contact lenses are the no-surgery way to correct your vision and ditch your glasses! Contact lenses are great for those with active lifestyles.",
    cost: "10000",
)
service2 = Service.create( 
    doctor_id: doctor2.id,  
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxonn4jbSC6kscHOMTGmNpr4YFo56PuOlwaA&usqp=CAU",
    name: "LASIK",
    description: "LASIK surgery is one of the most common and popular refractive surgeries today. Are you tired of wearing glasses or contact lenses? LASIK may be the answer. LASIK surgery aims to reshape the cornea, so that light can be properly reflected onto the retina. This allows for sharp and clear vision at all distances. If you are interested in this amazing procedure, call Primary Eyecare Associates today to set up your LASIK consultation.",
    cost: "25000",
)
service3 = Service.create( 
    doctor_id: doctor3.id, 
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJDY0H2xwrZkGDCk9DfDZBdLz5V-ipAIcYJA&usqp=CAU",
    name: "Orthokeratology (CRT & VST)",
    description: "Corneal Refractive Therapy or CRT is a non-surgical procedure involving wearing specialized contact lenses while sleeping.  The contact lenses reshape the cornea so that the patient sees well without contact lenses or glasses during the day.  It is intended mainly for mild to moderately nearsighted patients who may also have small amounts of astigmatism.",
    cost: "20000",
)
 service4 = Service.create( 
    doctor_id: doctor4.id,
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1nkdkVkBMcxHVULdM20TgpStBPNYe3hU2Gg&usqp=CAU",
    name: "Pediatric Eye Exams",
    description: "According to experts, 80% of learning is visual, which means that if your child is having difficulty seeing clearly, his or her learning can be affected.  This also goes for infants who develop and learn about the world around them through their sense of sight.  To ensure that your children have the visual resources they need to grow and develop normally, their eyes and vision should be checked by an eye doctor at certain stages of their development.",
    cost: "50000",
 )
service5 = Service.create(  
    doctor_id: doctor5.id,   
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZO0Ex1ZYmNKu0RajULPZ7_qLMUukpW8urPw&usqp=CAU",
    name: "Low Vision",
    description: "Low vision is where you have done traditional corrective vision methods such as glasses, contacts, medication or Lasik and are still unable to perform the daily tasks that you desire. You have difficulty with driving, watching TV, writing, recognizing faces or reading the paper. Through our various techniques, medications, aids and adjustments to daily life, you can return to many of your daily activities.",
   cost: "4000"
)
service6 = Service.create(
    doctor_id: doctor6.id,
    img: "https://s3.amazonaws.com/ecp-uploads/wp-content/uploads/sites/2250/2021/08/exam-slitlamp-1024x683.jpg",
    name: "Comprehensive Eye Exams",
    description: "Comprehensive eye examinations are much more than just getting a glasses prescription. The doctors thoroughly examine the front and back part of the eye for any eye or systemic diseases and also screen for glaucoma. In fact, determining a glasses prescription is a separate procedure from an eye examination and is called a refraction. Many times the doctors will perform a refraction at the same time as a comprehensive eye examination, depending on the needs of the patient.",
    cost: "5000",
   
)
























puts "Seeding is Complete"