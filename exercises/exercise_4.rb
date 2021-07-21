require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)

store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)

store = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.find_each do |store|
  puts store.name
  puts store.annual_revenue
end

@womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")
@womens_stores.find_each do |store|
  puts store.name
  puts store.annual_revenue
end
