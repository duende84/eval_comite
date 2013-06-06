namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    puts "----------------"
    puts "--- populate ---"
    puts "----------------"

    make_user_types
    make_user_states
    make_evaluation_types
    make_users
  end
end

def make_user_types

  puts "----------------"
  puts "-- UserTypes  --"
  puts "----------------"

	UserType.create!(name: "Admin")
	UserType.create!(name: "Visitante")
  UserType.create!(name: "Cliente")
  UserType.create!(name: "Auditor")
  UserType.create!(name: "Consultor")
end

def make_user_states

  puts "-----------------"
  puts "-- UserStates  --"
  puts "-----------------"

  UserState.create!(name: "Activo")
  UserState.create!(name: "Inactivo")
end


def make_evaluation_types

  puts "----------------------"
  puts "-- EvaluationTypes  --"
  puts "----------------------"

  EvaluationType.create!(name: "Auditoria")
  EvaluationType.create!(name: "Consultoria")
  EvaluationType.create!(name: "Asistencia Tecnica")
end

def make_users

  puts "----------------------"
  puts "--------- Users  -----"
  puts "----------------------"

  url = "http://20be948917086a968567-d6f97a9eba3cc258dac0d36dbb6d7ccd.r81.cf1.rackcdn.com/user2.png"

  User.create!(name: "Admin",
    email:"admin@mail.com",
    password:"admin123",
    password_confirmation: "admin123",
    user_type: UserType.find_by_name("Admin"),
    remote_image_url: url)

  User.create!(name: "Auditor",
    email:"auditor@mail.com",
    password:"auditor123",
    password_confirmation: "auditor123",
    user_type: UserType.find_by_name("Auditor"),
    remote_image_url: url)

  User.create!(name: "Consultor",
    email:"consultor@mail.com",
    password:"consultor123",
    password_confirmation: "consultor123",
    user_type: UserType.find_by_name("Consultor"),
    remote_image_url: url)

  User.create!(name: "Cliente",
    email:"cliente@mail.com",
    password:"cliente123",
    password_confirmation: "cliente123",
    user_type: UserType.find_by_name("Cliente"),
    remote_image_url: url)

end