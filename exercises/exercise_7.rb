require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter store name"
storeName = gets.chomp
# puts "Please enter annual revenue"
# annualRev = gets.chomp
# puts "Do they sell men's apparel?"
# mens = gets.chomp
# puts "Do they sell women's apparel?"
# womens = gets.chomp

@newStore = Store.create(:name => storeName)

puts @newStore.errors.full_messages
