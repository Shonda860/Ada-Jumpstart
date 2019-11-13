# # Welcomes user
# def continue
#   print "Press enter to continue\n"
#   gets
# end

# puts "Welcome to Business Travel Expenser.."
# continue

#user enters thier name
puts  "What is your name?"
user_input = gets.chomp

# Makes the first letter uppercase in name 
name = user_input.capitalize

#greets user
 puts "#{name}, please enter your total number of Round Trips: "
 total_trips = gets.chomp.to_i


begin
total_trips.to_i >= 4

rescue 
 puts "We are able to process more than THREE Round Trips at a time."

# succesful entry
if total_trips.to_i >= 1 && total_trips.to_i <=3
 puts "Please provide some infomation below: " 


#user miskeys vaule
elsif total_trips.to_i == 0 
 puts "It appears you enter Zero" 
#  elsif total_trips.to_i >= 4
#   puts "We are unable to process more than THREE Round Trips at a time2"

# #reattempt message based on invaild vaule 



#reattempt message if continues enter incorretly
loop do
puts "#{name}, please re-enter number of Round Trips?"
total_trips = gets.chomp
 until total_trips.to_i != 0 
 puts "You entered zero please try again"
 break

 if total_trips.to_i >= 4
puts "please enter in a vaule between 1-3" 
# succesful entry
elsif total_trips.to_i <= 3
 puts "Please provide some infomation below: "

# #Round Trip 1
puts "Please input the following for trip #1 "
puts "Round Trip Ticket Price? " 
first_ticket = gets.chomp.to_f
 
# # number of bag
# puts "How many bags did you check? "
# first_bags = gets.chomp.to_f
# first_bags = first_bags * 50 
 
# # user enter accommodations cost 
# puts "Price of accommodations? "
# first_accom = gets.chomp.to_f

# # Grand total of Round trip 1
# first_total =  first_ticket + first_bags + first_accom
# first_total = '%.2f'% first_total
# puts "Your First Round Trip Cost a total of $" + first_total

# # Round Trip 2
# puts "Please input the following for trip #2 "
# puts "Rount Trip Ticket Price? "
# second_ticket = gets.chomp.to_f
 
# # user enter bag count Round Trip 2
# puts "How many bags did you check? "
# second_bags = gets.chomp.to_f
# second_bags = second_bags * 50 

# # user enter accommodations cost Round Trip 2 
# puts "Price of accommodations? "
# second_accom = gets.chomp.to_f

# # Grand total of Round trip 2
# second_total =  second_ticket + second_bags + second_accom
# second_total = '%.2f'% second_total
# puts "Your Second Round Trip Cost a total of $" + second_total

# # Round Trip 3
# puts "Please input the following for trip #3 "
# puts "Rount Trip Ticket Price? "
# third_ticket = gets.chomp.to_f
 
# # user enter bag count Round Trip 3
# puts "How many bags did you check? "
# third_bags = gets.chomp.to_f
# third_bags = third_bags * 50 

# ## user enter accommodations cost Round Trip 3
# puts "Price of accommodations? "
# third_accom = gets.chomp.to_f

# # Grand total of Round trip 3
# third_total =  third_ticket + third_bags + third_accom
# third_total = '%.2f'% third_total
# puts "Your Third Round Trip Cost a total of $" + third_total

# # Overall Grandtotal of all trips 
# grand_cost = first_total.to_f + second_total.to_f + third_total.to_f
# puts grand_cost
# class Numeric
#   def percent_of(n)
#     self.to_f / n.to_f * 100.0
#   end
# end

# # Note: the brackets () around number are optional
# a = first_total.to_f .percent_of (grand_cost.to_f) 
# b = second_total.to_f .percent_of (grand_cost.to_f)
# c = third_total.to_f .percent_of (grand_cost.to_f) 

# puts " Trip _____ Cost_______ Percentage of Expenses"
# itemHash = {"Round Trip 1"=>[first_total, "#{"%.2f" %a}%"],
#             "Round Trip 2"=>[second_total, "#{"%.2f" %b}%"], 
#             "Round Trip 3"=>[third_total, "#{"%.2f" %c}%"]}
#             itemHash.each do |a,b|
#   print " #{a}     "
#   print "%-8s %5s" % b
#   puts
# end

# # Trip 1 summary
# puts "For trip 1 you spent a total $ #{first_total.to_f} of or about #{"%.2f" %a}% of total expenses."

#  # Trip 2 summary
# puts "For trip 2 you spent a total $ #{second_total.to_f} of or about #{"%.2f" %b}% of total expenses."

# # Trip 3  summary
# puts "For trip 3 you spent a total $ #{ third_total.to_f} of or about #{"%.2f" %c}% of total expenses."

# # Most expensive trip 

# if (a > b) && (a > c)
#   puts "Your most expensive trip was Trip 1 for a cost of #{first_total}" 
#     elsif (b > a) && (b>c)
#       puts puts "Your most expensive trip was Trip 2 for a cost of #{second_total}"
#         elsif (c > a) && (c > b)
#           puts "Your most expensive trip was Trip 3 for a cost of $ #{third_total}"
#             elsif (a == b) 
#               puts "Your most expensive trip was Trip 1 for a cost of #{first_total}
#                and Your most expensive trip was Trip 2 for a cost of #{second_total}"    
#                 elsif (b == c)
#                   "Your most expensive trip was Trip 2 for a cost of #{second_total} 
#                    and Your most expensive trip was Trip 3 for a cost of #{third_total}" 
#                     elsif (a == c)
#                     "Your most expensive trip was Trip 1 for a cost of #{first_total} 
#                     and Your most expensive trip was Trip 3 for a cost of #{third_total}" 
#   end
#  puts "You sent about #{first_ticket + second_ticket + third_ticket} on flights and $"   "#{first_accom + second_accom + third_accom} on accommodations"
#  puts
# itemHash = {"124"=>["shoes", "59.99"],
#             "456"=>["pants", "49.50"], 
#             "352"=>["socks", "3.99"]}

#             itemHash.each do |a,b|
#   print " #{a}     "
#   print "%-8s %5s" % b
#   puts
end
end
end
end
end
