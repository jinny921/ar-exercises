require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Please give your store a name: "
@store_name = gets.chomp
p @store_name
@store_created = Store.create(name: @store_name)
puts @store_created.errors.full_messages if @store_created.errors.any?

