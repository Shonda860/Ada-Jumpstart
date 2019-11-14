 #welcomes user
 greeting = "Welcome to Business Travel Expenser"
 puts greeting.upcase
 
 # user enters thier name
 # makes the first letter uppercase in name 
 puts  "Please enter your name?"
 user_input = gets.chomp
 name = user_input.capitalize
 
 #greets user
 puts (name + ",thank you let's get started.")
   
 # user enter infomation about round trip 1
 # displays hint if entry should be numerical
 puts " Please input the following reguarding Roundtrip #1"
 puts "Round Trip #1 Ticket Price? " 
 first_ticket = gets.chomp
 until first_ticket =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for cost of your flight. "
   first_ticket= gets.chomp
 next unless first_ticket =~ /^-?[0-9]+$/
 end
  
 # enter info about bags on roundtrip 1
 # displays hint if entry is not numerical
 puts "How many bags did you check? "
 first_bags = gets.chomp 
 until first_bags =~ /^-?[0-9]+$/ 
   puts "Number of bags must be numerical "
   first_bags= gets.chomp
 next unless first_bags =~ /^-?[0-9]+$/
 end
 
 # user enters accommodations cost roundtrip 1
 # displays hint if entry is not numerical
 puts "Price of accommodations? "
 first_accom = gets.chomp
 until first_accom =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for the cost of your accommodations."
   first_accom = gets.chomp
 next unless first_accom =~ /^-?[0-9]+$/
 end
 
 # Grand total of Round trip 1
 first_total = '%.2f'% (first_ticket.to_f + first_bags.to_f * 50 + first_accom.to_f)
 puts "Your First Round Trip cost a total of $" + first_total 
 
 
 # user enter infomation about ticket round trip 2
 # displays hint if entry should be numerical
 puts (name + ",please input the following reguarding Roundtrip #2")
 puts "Rount Trip #2 Ticket Price? "
 second_ticket = gets.chomp
 until second_ticket =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for cost of your flight. "
   second_ticket= gets.chomp
 next unless second_ticket =~ /^-?[0-9]+$/
 end
 
 # enter info about bags on roundtrip 2
 # displays hint if entry is not numerical
 puts "How many bags did you check? "
 second_bags = gets.chomp
 until second_bags =~ /^-?[0-9]+$/ 
   puts "Number of bags must be numerical"
   second_bags = gets.chomp
 next unless second_bags =~ /^-?[0-9]+$/
 end
 
 # user enter accommodations cost Round Trip 2 
 # displays hint if entry should be numerical
 puts "Price of accommodations? "
 second_accom = gets.chomp
 until second_accom =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for the cost of your accommodations. "
   second_accom = gets.chomp
 next unless second_accom =~ /^-?[0-9]+$/
 end
 
 # Grandtotal of Round trip 2
 second_total =  '%.2f' % (second_ticket.to_f + second_bags.to_f * 50 + second_accom.to_f)
 puts "Your Second Round Trip cost a total of $" + second_total
 
 # # Round Trip 3
 puts "#{name},Please input the following for trip #3 "
 puts "Round Trip Ticket Price? "
 third_ticket = gets.chomp
 until third_ticket =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for cost of your flight. "
 third_ticket= gets.chomp
 next unless third_ticket =~ /^-?[0-9]+$/
 end
 # # user enter bag count Round Trip 3
 puts "How many bags did you check? "
 third_bags = gets.chomp
 until third_bags =~ /^-?[0-9]+$/ 
   puts "Number of bags must be numerical"
   third_bags= gets.chomp
 next unless third_bags =~ /^-?[0-9]+$/
 end
 
 # user enters accommodations cost roundtrip 3
 # displays hint if entry is not numerical
 puts "Price of accommodations? "
 third_accom = gets.chomp
 until third_accom =~ /^-?[0-9]+$/ 
   puts "Please enter a numerical vaule for the cost of your accommodations. "
   third_accom= gets.chomp
 next unless third_accom =~ /^-?[0-9]+$/
 end
 
 # grand total of Round trip 3
 third_total =  '%.2f' % (third_ticket.to_f + third_bags.to_f * 50 + third_accom.to_f)
 puts "Your Third Round Trip Cost a total of $" + third_total
 
 # overall Grandtotal of all trips 
 grand_cost = first_total.to_f + second_total.to_f + third_total.to_f
 grand_cost = '%.2f'% grand_cost
 puts "-----------------------------------------------------------------------------"
 puts "Your grandtotal of all expenses of $ #{grand_cost}" "for all trips"  
 puts "-----------------------------------------------------------------------------"
 class Numeric
   def percent_of(n)
     self.to_f / n.to_f * 100.0
   end
 end
 
 # total key
 x = first_total.to_f .percent_of (grand_cost.to_f) 
 y = second_total.to_f .percent_of (grand_cost.to_f)
 z = third_total.to_f .percent_of (grand_cost.to_f) 
 
 # puts " Trip _____ Cost_______ Percentage of Expenses"
 summaryHash = {"Round Trip 1"=>["You spent a total of $" + first_total, + "which is ""#{"%.2f" %x}%" + "of your total expenses"],
   "Round Trip 2"=>["You spent a total of $" + second_total, "which is ""#{"%.2f" %y}%" + "of your total expenses."], 
   "Round Trip 3"=>["You spent a total of $" + third_total, + "which is ""#{"%.2f" %z}%" + "of your total expenses."]}
 summaryHash.each do |a,b|
   print " #{a} "
   print "%4s %1s" % b
   puts
 end
 
 # most expensive trip 
 if (x > y) && (x > z)
   puts "-----------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 1 for a cost of #{first_total}"
   puts "-----------------------------------------------------------------------------" 
 elsif (y > x) && (y > z)
   puts "------------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 2 for a cost of #{second_total}"
   puts "-------------------------------------------------------------------------------"
 elsif (z > x) && (z > y)
   puts "-------------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 3 for a cost of $ #{third_total}"
   puts "------------------------------------------------------------------------------"
 elsif (x == y) && (x == z)
   puts "-------------------------------------------------------------------------------"
   puts "Your most expensive trips was Trip 1, Trip 2 and Trip 3 for a cost of #{third_total}"   
   puts "------------------------------------------------------------------------------"
 elsif (y == z)
   puts "------------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 2 and Trip 3 for a cost of #{third_total}" 
   puts "------------------------------------------------------------------------------"
 elsif (x == z)
   puts "-------------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 1 and Trip 3 for a cost of $ #{third_total}" 
   puts "-------------------------------------------------------------------------------"
 elsif (x == y)
   puts "-------------------------------------------------------------------------------"
   puts "Your most expensive trip was Trip 1 and Trip 2 for a cost of $ #{second_total}" 
   puts "-------------------------------------------------------------------------------"
 end
  
 
 # total of all flights and accommodations 
  flights_total = '%.2f'% (first_ticket.to_f + second_ticket.to_f + third_ticket.to_f)
 accom_total = '%.2f'% (first_accom.to_f + second_accom.to_f + third_accom.to_f)
 puts "You spent about $ #{'%.2f'% flights_total} on flights and $"  + "#{'%.2f'% accom_total} on accommodations"
 puts "--------------------------------------------------------------------------------"