require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)
# @store4 = Store.find(4)
# @store5 = Store.find(5)
# @store6 = Store.find(5)

@store1.employees.create(
  first_name: "Rachel", 
  last_name: "Green", 
  hourly_rate: 40)
@store1.employees.create(
  first_name: "Monica", 
  last_name: "Geller", 
  hourly_rate: 45)

@store1.employees.create(
  first_name: "Ross", 
  last_name: "Geller", 
  hourly_rate: 60)

@store2.employees.create(
  first_name: "Chandler", 
  last_name: "Bing", 
  hourly_rate: 80)

@store2.employees.create(
  first_name: "Joey", 
  last_name: "Tribioni", 
  hourly_rate: 25)

@store2.employees.create(
  first_name: "Pheobe", 
  last_name: "Buffay", 
  hourly_rate: 100)