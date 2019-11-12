# Welcomes user
# puts "Welcome to Business Travel Expenser"

 # ask the user for thier name
 puts "What is your name? "
 user_input = gets.chomp
# # # Makes the first letter uppercase in name 
name = user_input.capitalize

# user inputs trips, first attempt
 puts "#{name}, please enter your total number of Round Trips: "
 total_trips = gets.chomp.to_i

# if user miskeys
 if total_trips <= 0 
  puts " You entered zero there is no information needed at this time"

# if user enter more than able to process
# #re-entry of trips
 elsif total_trips >= 6 
  puts "ERROR: We are able to process more than five Round Trips at a time."
    puts "Please try again! " 
       name + ", please re-enter your total number of Round Trips: "

# total_trips = gets.chomp.to_i
  puts "Please provide some infomation below: " 
   puts "Please input the following for trip  " 
 #   "Round Trip Ticket Price"
# succesful entry
  else total_trips <=5
   puts "Please provide some infomation below: " 
end

#Round Trip 1
puts "Please input the following for trip #1 "
puts "Round Trip Ticket Price? "
trip_1 = gets.chomp.to_i
  
# number of bag
puts "How many bags did you check? "
bags_trip1 = gets.chomp.to_i
bags_trip1 = bags_trip1 * 50 
  
puts "Price of accommodations? "
accom_trip1 = gets.chomp.to_i
# Grand total of Round trip 1
total_trip1 =  trip_1 + bags_trip1 + accom_trip1
puts total_trip1.to_f

# Round Trip 2
puts "Please input the following for trip #2 "
puts "Rount Trip Ticket Price? "
trip_2= gets.chomp.to_i
  
puts "How many bags did you check? "
bags_trip2 = gets.chomp.to_i
bags_trip2 = bags_trip2 * 50 

puts "Price of accommodations? "
accom_trip2 = gets.chomp.to_i

# Grand total of Round trip 2
total_trip2 =  trip_2 + bags_trip2 + accom_trip2
puts total_trip2.to_f

# Round Trip 3
puts "Please input the following for trip #3 "
puts "Rount Trip Ticket Price? "
trip_3 = gets.chomp.to_i
  
puts "How many bags did you check? "
bags_trip3 = gets.chomp.to_i
bags_trip3 = bags_trip3 * 50 

puts "Price of accommodations? "
accom_trip3 = gets.chomp.to_i

# Grand total of Round trip 3
total_trip3 =  trip_3 + bags_trip3 + accom_trip3
puts total_trip3.to_f

# Overall Grandtotal of all trips 
cost_trips = (total_trip1 + total_trip2 + total_trip3)
puts "Your have at total of $ #{cost_trips.to_f} in expenses for these trips" 

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

# Note: the brackets () around number are optional
a = total_trip1 .percent_of(cost_trips) 
b = total_trip2 .percent_of (cost_trips)
c = total_trip3 .percent_of (cost_trips) 

# Trip 1 summary
puts "For trip 1 you spent a total $ #{total_trip1.to_f} of or about #{a}% of total expenses."




 # => 10.0  (%)# Trip 2 summary
puts "For trip 2 you spent a total $ #{total_trip2.to_f} of or about #{b}% of total expenses."

# Trip 3  summary
puts "For trip 3 you spent a total $ #{total_trip3.to_f} of or about #{c}% of total expenses."

 
