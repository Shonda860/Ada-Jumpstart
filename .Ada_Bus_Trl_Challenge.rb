# Welcomes user
puts "Welcome to Business Travel Expenser"
# user inputs name
puts "What is your name?"
name = gets.chomp

puts name + ", please enter your total number of Round Trips: "
total_trips = gets.chomp.to_i
if total_trips >= 1
   puts "Please provide some infomation below: "
else total_trips <= 0
  puts "Thank you there is no information needed at this time"
end

# # user inputs name
# puts "What is your name?"
# name = gets.chomp

# puts name + "," + "please provide some infomation below: "

# puts "Please input the following for trip #1 "
# puts "Round Trip Ticket Price"
# round_trip1 = gets.chomp.to_i

# puts "How many bags did you check?"
# bags_trip1 = gets.chomp.to_i

# puts "Please input the following for trip #2 "
# puts "Round Trip Ticket Price"
# round_trip2 = gets.chomp.to_i

# puts "How many bags did you check?"
# bags_trip2 = gets.chomp.to_i

# puts "Please input the following for trip #3 "
# puts "Round Trip Ticket Price"
# round_trip3 = gets.chomp.to_i

# puts "How many bags did you check?"
# bags_trip3 = gets.chomp.to_i

