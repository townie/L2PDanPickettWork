# returns a string containing the proper old-school Roman numeral. 
# In other words, old_roman_numeral 4 should return 'IIII'. 
# Make sure to test your method on a bunch of different numbers



puts "Pleas enter a number you would like to convert to an OLD roman numeral"

convert = gets.chomp.to_i


def old_roman_numeral regint
roman = ''
temproman= ''
romanIndex =['I', 1, 'V',5,'X',10,'L',50,'C',100,'D',500,'M',1000]
	while regint > 0
	
		currentCheckValue= romanIndex.pop
	puts currentCheckValue
		currentIndex = romanIndex.pop
	puts currentIndex

		while regint/currentCheckValue > 0
			regint = regint -currentCheckValue
			puts regint
			temproman = temproman + "#{currentIndex}"
			puts temproman
		end
puts "end of outer loop"
roman = roman +temproman
	end

puts roman #string to add the values to

end



old_roman_numeral convert