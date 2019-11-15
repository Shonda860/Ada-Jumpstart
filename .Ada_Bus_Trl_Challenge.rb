 # Norshonda "Shonda" Warren

 load 'Trips.rb'

 # welcomes user
 greeting = "Welcome to Business Travel Expenser"
 puts greeting.upcase
 puts
 # user enters thier name
 # makes the first letter uppercase in name 
 print  "Let's get started! Please enter your name:"
 user_input = gets.chomp
 name = user_input.capitalize
 
 # user enters number of roundtrips
 print "#{name}, how many roundtrips did you take?"
 num_roundtrips = gets.to_i
 # array represent each roundtrips
 round_trip = Array.new(num_roundtrips) 
 #For each round trips, gather ticket price, bags and accomodations
 round_trip = gets.chomp.to_i
 until round_trip <= 5
   puts "Oops, we can only process five entries at a time "
 next unless round_trip >= 5
 end
 
 # create round trip object
 num_roundtrips.times do |num| 
   puts "Please input the following for Round trip # #{num+1}:"
   puts
   print "Please enter the cost of your flight: "
   flight_cost = gets.to_i
   print "How many bags did you check for this trip? "
   num_bags = gets.to_i
   print "What was the cost of your accomodations "
   accom_cost = gets.to_i
   round_trip[num] = Trips.new(flight_cost,num_bags,accom_cost)
 end
 
 # in event of no info entered, most_expensive_trip
 name_most_expensive_trip = ""		
 most_expensive_trip = 0		
 
 # event of zero value  
 total_flight = 0		
 total_accomodations = 0			
 grand_total_trip = 0	
 
 # removes only showing one of the highest trips and names it
 multiple_most_expensive_trip = false
 name_most_expensive_trip = ""		
 
 puts "Below is your total of each round trip:"
 
 # Loop cycle thru the looking for sirpertives
 
 puts "-----------------------------------------------------------------------------"
 
 # num_roundtrips.times do |num|
 #   puts "Round trip# #{num+1}: $#{round_trip[num].cost_per_trip.f}"
 
 num_roundtrips.times do |num,value|
   puts "Round #{num+1}: $#{round_trip[num].cost_per_trip}"
   if round_trip[num].cost_per_trip > most_expensive_trip
     most_expensive_trip = round_trip[num].cost_per_trip
   name_most_expensive_trip= "Trips #{num+1}"
     multiple_top = false
   elsif round_trip[num].cost_per_trip == most_expensive_trip
     most_expensive_trip = "#{most_expensive_trip}, Trips #{num+1}"
     multiple_top = true
   end
 
 # calcautes indivail cost per trip
   total_flight += round_trip[num].cost_per_trip
   total_accomodations += round_trip[num].cost_per_trip
   grand_total_trip += round_trip[num].cost_per_trip
 end
 
 #  calcutes mostexpensive trip.
 
 print "Your most expensive trip was: "
 if most_expensive_trip > 0
   print name_most_expensive_trip
   if multiple_most_expensive_trip == true
     print " It appears you had multiple expensive trips"
   end
 else 
   print "No expesnses enter"
 end
 puts
 puts
 
 # Print out overall totals for sales and profit and thank the user.
 
 puts "You spent about: $#{total_flight} "on flights &
 {total_accomodations} on accomodations"
 puts "Net amount raised overall: $#{grand_total_trip}"
 puts
 puts "Hooray! Thank you for using our Business Expenser"
 
 
 