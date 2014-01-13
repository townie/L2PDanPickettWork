puts "Pleas enter a number you would like to convert to an NEW roman numeral"

convert = gets.chomp.to_i


def new_roman_numeral regint
roman = ''
temproman =''
tempV = 0
preCCV = ''
preI =''
romanIndex =['I', 1, 'V',5,'X',10,'L',50,'C',100,'D',500,'M', 1000]
 

	while regint > 0

		currentCheckValue= romanIndex.pop.to_i
		puts currentCheckValue
		currentIndex = romanIndex.pop

		while regint/currentCheckValue > 1
			regint = regint -currentCheckValue

   			temproman = temproman + "#{currentIndex}"
   			tempV = tempV + currentCheckValue 
   			
   			if preCCV == (tempV + currentCheckValue)
   				temproman = "#{currentIndex} #{preCCV}"
			end
			puts regint
		end
		
		tempV = 0
		roman = roman + temproman

		preCCV = currentCheckValue
		preI = currentIndex
	end

puts roman #string to add the values to
 
end



new_roman_numeral convert