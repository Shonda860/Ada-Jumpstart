# Welcomes user
puts "Welcome to Business Travel Expenser"
# user inputs name
puts "What is your name?"
name = gets.chomp

puts name + ", please enter your total number of Round Trips: "
total_trips = gets.chomp.to_i
if total_trips <= 0 
   puts " You entered zero there is no information needed at this time"
elsif total_trips >= 6 
  puts "ERROR: We are able to process more than five Round Trips at a time."
  # then puts "Please try again"
else total_trips = [1..5]
  puts "Please provide some infomation below: "
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

