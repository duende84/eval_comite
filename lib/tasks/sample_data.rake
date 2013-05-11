namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    puts "----------------"
    puts "--- populate ---"
    puts "----------------"

    make_user_types
    make_user_states
    make_evaluation_types
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