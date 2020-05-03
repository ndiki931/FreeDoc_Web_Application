# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

#Reset data into database
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinTableDoctorSpecialty.destroy_all

#Generate 20 cities
20.times do |city|
	tp City.create!(city_name:Faker::Address.city)
	puts "city #{city}/20 successfully created"
end

#Generate 50 objects into database
50.times do |i|
	tp doctor = Doctor.create!(first_name:Faker::Name.first_name,
														 last_name:Faker::Name.last_name,
														 zip_code:Faker::Address.zip_code,
														 city: City.all.sample
							)

tp patient = Patient.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city: City.all.sample

  )

 tp rdv = Appointment.create!(
      doctor: doctor,
      patient: patient,
      date: Faker::Date,
      city: City.all.sample
  )

  tp specialty = Specialty.create!(specialty_name: %w[dentiste médecin_généraliste prothésiste chirgurgien].sample)

  tp j = JoinTableDoctorSpecialty.create!(
      doctor: doctor,
      specialty: specialty
  )

  puts "#{i}/50 Objects Doctor, Patient, Appointment, Specialty were successuflly created"
 
end


