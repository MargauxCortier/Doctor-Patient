# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#WE REMOVE ALL
# ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE")
# Doctor.destroy_all
# Patient.destroy_all
# Appointment.destroy_all

# CITIES
5.times do
  city = City.create!(name: Faker::Address.city)
end

# SPECIALTIES
20.times do
	specialty = Specialty.create!(name: Faker::Company.profession)
end

#DOCTOR
10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.zip_code, city_id: rand(1..City.count))
end

Specialty.all.each do |lol|
	Doctor.all.each do |rar|
		Middle.create!(specialty_id: lol.id, doctor_id: rar.id)
	end
end

#PATIENTS
10.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..City.count))
end

#APPOINTMENT 
Doctor.all.each do |var|
	Patient.all.each do |art|
		City.all.each do |mar|
			1.times do
			  appointment = Appointment.create!(date: Faker::Time.forward(23, :day), doctor_id: var.id, patient_id: art.id, city_id: mar.id)
			end
		end
	end
end

# User.all.each do |var|
# 	Article.all.each do |art|
# 		if rand(2).zero?
# 			Commentaire.create(content: "#{Faker::Cannabis.health_benefit}", user_id: var.id, article_id: Article.find(1+rand(12)).id)
# 		end
# 	end
# end