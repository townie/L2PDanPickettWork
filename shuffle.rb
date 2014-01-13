list = ['beryl','jackie','ash','yahoo','tira','shearman','bernace','abeljkyjfgfs', 'abe', 'abe']


puts list.length

def shuffle list
	countdown = list.length 
	countdown = countdown *100
	while countdown != 0
		rand_first = rand(list.length)
		rand_second = rand(list.length)

		storage = list[rand_first]
		list[rand_first] = list[rand_second]
		list[rand_second] = storage

		countdown = countdown - 1
	end
return list

end

puts shuffle(list)