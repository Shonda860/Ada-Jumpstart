# Welcomes user
puts "Welcome to Business Travel Expenser"

#user enters thier name
 puts  "What is your name?"
 user_input = gets.chomp

# Makes the first letter uppercase in name 
name = user_input.capitalize

#greets user
  puts "#{name}, thank you let's get started."
  
#Round Trip 1
puts "#{name},Please input the following for trip #1 "
puts "Round Trip Ticket Price? " 
first_ticket = gets.chomp.to_i
number = gets.chomp
a = number

until number =~ /^-?[0-9]+$/ 
  puts "Please enter a numerical vaule "
 
  next unless number !=~ /^-?[0-9]+$/
  puts "Try agrain"

 number= gets.chomp
next number =~ /^-?[0-9]+$/

end
#number of bag
puts "How many bags did you check? "
first_bags = gets.chomp.to_f
first_bags = first_bags * 50 


# user enter accommodations cost 
puts "Price of accommodations? "
first_accom = gets.chomp.to_f

# Grand total of Round trip 1
first_total =  first_ticket + first_bags + first_accom
first_total = '%.2f'% first_total
puts "Your First Round Trip Cost a total of $" + first_total

#Round Trip 2
puts "#{name},Please input the following for trip #1 "
puts "Rount Trip Ticket Price? "
second_ticket = gets.chomp.to_f
  
# user enter bag count Round Trip 2
puts "How many bags did you check? "
second_bags = gets.chomp.to_f
second_bags = second_bags * 50 

# user enter accommodations cost Round Trip 2 
puts "Price of accommodations? "
second_accom = gets.chomp.to_f

# Grand total of Round trip 2
second_total =  second_ticket + second_bags + second_accom
second_total = '%.2f'% second_total
puts "Your Second Round Trip Cost a total of $" + second_total

# Round Trip 3
puts "#{name},Please input the following for trip #3 "
puts "Rount Trip Ticket Price? "
third_ticket = gets.chomp.to_f
  
# user enter bag count Round Trip 3
puts "How many bags did you check? "
third_bags = gets.chomp.to_f
third_bags = third_bags * 50 

# user enter accommodations cost Round Trip 3
puts "Price of accommodations? "
third_accom = gets.chomp.to_f

# Grand total of Round trip 3
third_total =  third_ticket + third_bags + third_accom
third_total = '%.2f'% third_total
puts "Your Third Round Trip Cost a total of $" + third_total

# Overall Grandtotal of all trips 
grand_cost = first_total.to_f + second_total.to_f + third_total.to_f
grand_cost = '%.2f'% grand_cost

puts  "Your grandtotal of all total roundtrips a total of $" + grand_cost

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

#Note: the brackets () around number are optional
a = first_total.to_f .percent_of (grand_cost.to_f) 
b = second_total.to_f .percent_of (grand_cost.to_f)
c = third_total.to_f .percent_of (grand_cost.to_f) 

# puts " Trip _____ Cost_______ Percentage of Expenses"
itemHash = {"Round Trip 1"=>["You spent a total of $" + first_total, + "which is ""#{"%.2f" %a}%" + "of your total expenses"],
            "Round Trip 2"=>["You spent a total of $" + second_total, "which is ""#{"%.2f" %b}%" + "of your total expenses"], 
            "Round Trip 3"=>["You spent a total of $" "which is "+ third_total, "#{"%.2f" %c}%" + "of your total expenses"]}
            itemHash.each do |a,b|
  print " #{a} "
  print "%10s %2s" % b
  puts
end

# #Trip 1 summary
# first_total = '%.2f'% first_total
# grand_cost = '%.2f'% grand_cost
# puts "For trip 1 you spent a total $ #{"%.2f"% first_total.to_f} of or about #{"%.2f" %a}% of total expenses."

# # Trip 2 summary
# puts "For trip 2 you spent a total $ #{"%.2f"% second_total.to_f} of or about #{"%.2f" %b}% of total expenses."

# # Trip 3  summary
# puts "For trip 3 you spent a total $ #{"%.2f"% third_total.to_f} of or about #{"%.2f" %c}% of total expenses."

# Most expensive trip 

if (a > b) && (a > c)
  puts "Your most expensive trip was Trip 1 for a cost of #{first_total}" 
    elsif (b > a) && (b>c)
      puts puts "Your most expensive trip was Trip 2 for a cost of #{second_total}"
        elsif (c > a) && (c > b)
          puts "Your most expensive trip was Trip 3 for a cost of $ #{third_total}"
            elsif (a == b) 
              puts "Your most expensive trip was Trip 1 for a cost of #{first_total}
               and Your most expensive trip was Trip 2 for a cost of #{second_total}"    
                elsif (b == c)
                  "Your most expensive trip was Trip 2 for a cost of #{second_total} 
                   and Your most expensive trip was Trip 3 for a cost of #{third_total}" 
                    elsif (a == c)
                    "Your most expensive trip was Trip 1 for a cost of #{first_total} 
                    and Your most expensive trip was Trip 3 for a cost of #{third_total}" 
  end
  flights_total = first_ticket + second_ticket + third_ticket
  accom_total = first_accom + second_accom + third_accom
 puts "You sent about $ #{'%.2f'% flights_total} on flights and $"  + "#{'%.2f'% accom_total} on accommodations"


