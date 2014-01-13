#birthday to a billion

bday = Time.local(1988,1,15,18, 31)

billionbday = bday + 10000
puts billionbday
if billionbday < Time.new
	puts "Sorry you missed your bday by " 
	puts  Time.new - billionbday 
else
	puts "Mark your calendar for #{billionbday}"
end