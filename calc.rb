# leap year program
# Goal is output of this: calculate the leap years

# Leap years. Write a program that asks for a starting year and an ending year
#  and then puts all the leap years between them (and including them, if they are also leap years). 
#  Leap years are years divisible by 4 (like 1984 and 2004). 
#  However, years divisible by 100 are not leap years (such as 1800 and 1900) 
#  unless they are also divisible by 400 (such as 1600 and 2000, 
#   which were in fact leap years). What a mess!
start_year= 0
finish_year= 0
test = true
puts "We are going to calculate a leap years in between to years"

while test
  puts "Please input the starting year"

  start_year = gets.chomp.to_i
  
  puts "Please input the year to finish with"

  finish_year = gets.chomp.to_i

  if start_year > finish_year
    puts "Let\'s try this again please:"
  else
    puts "good lets get calculating"
    test = false 
  end

end
dif = finish_year - start_year

puts "The number years that are years between #{start_year} and #{finish_year} are: #{dif}"

test = false


while dif >0

  if (start_year % 4 == 0 && start_year % 100 != 0 ) || start_year % 400== 0
     puts "#{start_year} is a leap year"
  end
  
  start_year = start_year +1
  dif = dif - 1
  
end


