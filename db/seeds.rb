# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


100.times do |n|
	Doctor.create!(name:"doctor_#{n+1}", email: "d#{n+1}@d#{n+1}.com", password: "12345678", password_confirmation: "12345678",
	 			   doctor_category_id: rand(1..12), age: rand(30..60), phone_number: rand(9943131131..9953131131))
end
