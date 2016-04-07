# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email



## Creating Doctor Categories
## --------------------------

DoctorCategory.create(name: "Ophthalmologist")
DoctorCategory.create(name: "Dermatologist")
DoctorCategory.create(name: "Homeopath")
DoctorCategory.create(name: "Ayurveda")
DoctorCategory.create(name: "Cardiologist")
DoctorCategory.create(name: "Gastroenterologist")
DoctorCategory.create(name: "Psychiatrist")
DoctorCategory.create(name: "Urologist")
DoctorCategory.create(name: "Neurologist")
DoctorCategory.create(name: "Dentist")
DoctorCategory.create(name: "Gynecologist-obstetrician")
DoctorCategory.create(name: "Ear-nose-throat-ent-specialist")

## Creating Doctors
## ----------------

100.times do |n|
	hospital_names = ["Sunrise", "EMC", "Apollo", "KIMS", "VASAN"]
	Doctor.create!(name:"doctor_#{n+1}", email: "d#{n+1}@d#{n+1}.com", password: "12345678", password_confirmation: "12345678",
	 			   doctor_category_id: rand(1..12), age: rand(30..60), phone_number: rand(9943131131..9953131131),
	 			   experience: rand(4..25), hospital_name: hospital_names.sample, active: true)
end
