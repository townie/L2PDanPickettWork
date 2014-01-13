# happy bday

def getage
	puts "Lets get your birthday? Year first, please"
	year = gets.chomp.to_i
	while year < 1900 
		puts "You are not that old try again."
		puts " Please enter your Birth YEAR"
		year = gets.chomp.to_i
	end
	puts "Please enter the month you were born"
	month = gets.chomp.to_i
	while month > 12
		puts "You are not that old try again."
		puts "Please enter your birth month"
		month = gets.chomp.to_i
	end

	puts "Please enter the day you were born"
	day = gets.chomp.to_i
	while day > 31
		puts "You are not that old try again."
		puts "Please enter your birth day"
		day = gets.chomp.to_i
	end

	bday = Time.local(year, month, day)

return bday
end

def calc_age bday
	ageinyears = Time.new - bday
	while ageinyears >  31536000
		ageinyears = ageinyears - 31536000
		puts "SPANK!"

	end
end


puts calc_age(getage)