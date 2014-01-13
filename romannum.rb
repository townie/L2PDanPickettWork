 

puts "please type the number you want converted into an Roman numeral"

convert = gets.chomp.to_i

def old_roman num

	roman = ''

	roman = roman + 'M' * (num        / 1000)
  	roman = roman + 'D' * (num % 1000 /  500)
  	roman = roman + 'C' * (num %  500 /  100)
  	roman = roman + 'L' * (num %  100 /   50)

  	 	#'v' -------5 checking for 9
  	if ((num % 50/ 10 + 1) == (num %  100 /   50) )
		roman = roman + 'IX'
	else
	roman = roman + 'X' * (num %   50 /   10)
end
  	

  	#'v' -------5 checking for 9
  	if ((num % 50/ 10 + 1) == (9) )
		roman = roman + 'IX'
	else
		roman = roman + 'V' * (num %   10 /    5)
	end

  	#'i' -----1 check for 4
	if (((num % 5/ 1) + 1) == (5)
		roman = roman + 'IV'
	else
		roman = roman + 'I' * (num %    5 /    1)
	end
	roman
end

puts (old_roman (convert))