require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@company_revenue = Store.all.sum("annual_revenue")
puts "Total revenue of the company: $#{@company_revenue}"

@average_revenue = @company_revenue / Store.count
puts "Average revenue of all the stores: $#{@average_revenue}"

@outstanding_store_count = Store.select { |x| x[:annual_revenue] >= 1000000 }.count
puts "We have #{@outstanding_store_count} of stores that are generating more equal or more than 1M annual revenue."


