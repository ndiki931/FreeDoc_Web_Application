# README

## Learning relational database with Ruby and Rails

# THE PROJECT

	We will implement 'FreeDoc' webapp which the goal is to book a doctor

	for this website app, we solely create the modals, so tables too and link modals among them as stated below


## TABLES AND DEPENDENCIES

### 'Many-to-Many' relations

	Doctor-Patient : through Appointment
	Doctor-Specialty :through JoinTableDoctorSpecialty

### 'One-to-Many' relations

	Doctor-Appointment
	Patient-Appointment
	Doctor-City
	Patient-City
	Appointment-City
	Specialty-JoinTableDoctorSpecialty
	Doctor-JoinTableDoctorSpecialty


## Specs

	. Ruby version : 2.5.1

## Installation

	To install the project, follow these steps :

    1. Use command git clone to clone the project on your environnment or 'Download Repository'
    2. Use command 'cd' to go in the project's repository
    3. Use command 'bundle install' to install all the gem dependancies

## Run

	To run the project, follow these steps :
	1. Use command 'rails db:migrate' to create the database
    2. Use command 'rails db:seed' to automatically populate data into the database and the models

## Test via Rails console

	launch command 'rails console --sandbox' then follow these commands below
	> 'tp c = City.first'  => get first city object
	> 'tp c.appointments'  => get all appointments in this city
	> 'tp c.appointments.first.doctor'  => get the first appointment and the doctor who participates
	> 'tp c.appointments.first.patient' => get the first appointment and the patient who participates
	> 'tp c.appointments.first.doctor.specialties'  => get the frist appointment, the doctor who participates and his specialities(competencies)
	> 'tp c.appointments.first.doctor.patients' => get the first appointment, the doctor who participates, and his all patients linked
	> etc ..............

