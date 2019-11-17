# task to create an program to track business expenses 
# hold methods
class Trip
  
  # gets and sets
    attr_reader :flight_cost, :num_bags, :accom_cost
    
  
  # bags cost are charge at this rate
    Bag_Cost = 50
    
    def initialize (flight_cost, num_bags, accom_cost)
      @flight_cost = flight_cost
      @num_bags = num_bags
      @accom_cost= accom_cost
    end
    
    # commutes ticket cost per round trip 
    def per_ticket_cost
      flight_cost
    end
  
    # commputes bag cost per round trip 
    def checked_bag_cost
     num_bags * Bag_Cost
    end
  
    # commputes per trip cost per round trip 
    def per_trip_accom
      accom_cost
    end
    
    # commputes each round trip
    def per_trip_total
      (per_ticket_cost + checked_bag_cost + per_trip_accom)
     end
    
    end
  
  puts
  # welcomes user to Business Travel ExpensR
  puts  "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
  puts  "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
  puts  "|********************Business Travel ExpensR***********************|"
  puts  "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
  puts  "|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|"
  puts 
  
  
  # user enters thier name
  puts  "Please enter your name:"
  user_input = gets.chomp
  name = user_input.capitalize
  
  # personlized intro to program
  puts (name + " ,thank you, let's get started.")
  puts
  
  # user enters number of number of trips 
  # will pull from this input to create a array
  # will try to catch user miskey and values outside of range
  print "Please tell us how many trips you would like to expense today? "
  num_round_trips = gets.to_i
  until num_round_trips  <= 5
    puts "Oops! You can only able to process FIVE trips at a time. "
   num_roundtrips = gets.chomp.to_i
  next unless num_round_trips > 6
  end
  puts
  
  # houses all of the trip number
  # to be callled on later
  indivual_trip = Array.new(num_round_trips) 
    
  # each Round trip records using array
  # user inputs info be used for calculations
  num_round_trips.times do |num| 
    puts "Round trip #{num+1}:"
    print "How much did your flight cost?: "
    flight_cost = gets.to_i
    print "How many bags did you check?: "
    num_bags = gets.to_i
    print "How much did you spend on accomdations?"
    accom_cost = gets.to_i
    indivual_trip[num] = Trip.new(flight_cost, num_bags, accom_cost,)
    puts
  end
  
  
  puts
  puts "---------------------ExpensR Snapshot----------------------------------------"
  # settings for pulling out variables	
  total_flight_cost = 0		
  total_bags_cost = 0			
  total_trip_accom = 0		
  total_trip_cost = 0
  grand_sum =0 
  multiple_top_trip = true
  top_trip_name = " "	
  most_expensive_trip = 0				  	
       
  # advising user that they will now be viewing results
  puts "Below you will find your the itemized of expenses:"
  puts "------------------------------------------------------------------------------"
  # itemized loop showing trip cost breakdown
  # loop for trips totals 
  num_round_trips.times do |num,value|
    puts "Round Trip ##{num+1}:"
    puts "----------------------------------------------------------------------------"
   
   # data taking from above array for easy storage
    puts "Flight Cost:" " $#{'%.2f' %indivual_trip[num].per_ticket_cost.to_f}"
    puts "Bags Cost:"   " $#{'%.2f' %indivual_trip[num].checked_bag_cost.to_f}" 
    puts "Accomodations:" " $#{'%.2f' %indivual_trip[num].per_trip_accom.to_f}"
    puts "Trip Cost:"  " $#{'%.2f' % indivual_trip[num].per_trip_total.to_f}"
  
  puts "------------------------------------------------------------------------------"
  
  
  # used to find the most expensive trip and the conditions it must meet
  if indivual_trip[num].per_trip_total > most_expensive_trip
      most_expensive_trip = indivual_trip[num].per_trip_total
      top_trip_name = "Round Trip #{num+1}"
      multiple_top = true
  elsif indivual_trip[num].per_ticket_cost == most_expensive_trip
      multiple_top_trips = "#{top_trip_name}, Round trip #{num+1}"
      multiple_top_trips = false
    end
  
  # to show each trip item
  # taking from the above array and converted into new var
  total_flight_cost += (indivual_trip[num].per_ticket_cost.to_f)
  total_bags_cost += (indivual_trip[num].checked_bag_cost.to_f)
  total_trip_accom += (indivual_trip[num].per_trip_accom.to_f)
  total_trip_cost = (total_flight_cost + total_bags_cost + total_trip_accom)
  
  # subtotals each trip under there respect 
  puts "This is your subtotal of all of your expenses for the above trip." " $#{'%.2f' % [total_trip_cost.to_f].sum}"
  puts "-------------------------------------------------------------------------------"
  end
    
  puts "-------------------------------------------------------------------------------"
  
  puts "|===================|"
  puts "|ABOUT YOUR EXPENSES|"
  puts "|===================|"
  
  # identifies the the highest trip
  if most_expensive_trip > 0
    puts "#{top_trip_name}"" was your most expensesive trip. "
    if multiple_top_trip == true
    puts " You have more than one more expense trip."
    end
  else 
    puts "No trips were entered at this time."
  
  end
  
  # shows user the total cost for flight and accomodations for all trips
  puts "Total Flight Cost" "$#{ "%.2f" % total_flight_cost.to_f} " " Accomodations" "$#{ "%.2f" % total_trip_accom.to_f}"
  
  # gives user a subtotal of trip cost in the ExpensR snapshot
  puts "----------------------------------------------------------------------------------"
  puts "You spent a total of:" "$#{ "%.2f" % total_trip_cost } on your all your trips "
  puts "---------------------------------------------------------------------------------"
  
  #used to define the percentage method below
  class Numeric
    def percent_of(n)
      self.to_f / n.to_f * 100.0
    end
  end
  
  # used this loop cycle through the trip and find each cost
  # then uses total to find percentage
  num_round_trips.times do |num,value|
  x= indivual_trip[num].per_trip_total.to_f.percent_of(total_trip_cost.to_f)
    puts "For Round Trip # #{num+1}: Accounts for "  "#{"%.2f" % x}% of your total expenses."
    end
  
  # thanks user for using
  # with a message about safe travels
  puts
  puts "Hooray!#{name},thank you,for choosing Business Travel ExpensR."
  puts
  puts "Remember to keep for your records"
  puts
  exit = "Happy Travels!"
  puts exit.upcase
                                                                                #Norshonda- Business Travel ExpensR program