require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@revenue_sum = Store.sum("annual_revenue")
@stores_numbers = Store.all.count
@profit_stores = Store.where("annual_revenue >= 1000000").count

puts "total revenue for the entire company: #{@revenue_sum}"
puts "average annual revenue for all stores: #{@revenue_sum/@stores_numbers}"
puts "number of stores that are generating $1M or more in annual sales: #{@profit_stores}"