require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "James", last_name: "May", hourly_rate: 60)
@store1.employees.create(first_name: "Rice", last_name: "Pulao", hourly_rate: 69)
@store1.employees.create(first_name: "Moona", last_name: "Bouni", hourly_rate: 175)

@store2.employees.create(first_name: "Pulse", last_name: "Princess", hourly_rate: 150)
@store2.employees.create(first_name: "Cici", last_name: "Kutti", hourly_rate: 69)
@store2.employees.create(first_name: "Castiel", last_name: "Jack", hourly_rate: 68)

