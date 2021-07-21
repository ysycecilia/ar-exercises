require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Elbert", last_name: "Butler", hourly_rate: 42)
@store1.employees.create(first_name: "Adrian", last_name: "Huff", hourly_rate: 54)
@store2.employees.create(first_name: "Kenneth", last_name: "Gregory", hourly_rate: 28)
@store2.employees.create(first_name: "Walter", last_name: "Pratt", hourly_rate: 33)
@store2.employees.create(first_name: "Ada", last_name: "Palmer", hourly_rate: 62)