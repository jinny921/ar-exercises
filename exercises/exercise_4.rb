require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"
# Your code goes here ...

Store.create(
  name: "Surrey",
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true)

Store.create(
  name: "Whistler",
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: false)

Store.create(
  name: "Yaletown",
  annual_revenue: 430000, 
  mens_apparel: true, 
  womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |x| print "#{x.name} has an annual revenue of #{x.annual_revenue}.\n"}

@womens_stores = Store.where(womens_apparel: true)

def less_1M_revenue(store)
  if small_store = store[:annual_revenue] < 1000000
    print "#{store[:name]} has an annual revenue of #{store[:annual_revenue]}, less than 1M.\n"
  end
end

@womens_stores.select { |x| less_1M_revenue(x) }