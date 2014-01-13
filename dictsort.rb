#sorting lists! woot
#
#

unlist = ['beryl','jackie','ash','yahoo','tira','shearman','bernace','abe']

sortedList = []

def sortList unsort , sorted
	i = 1
	ranking= unsort[0]
	
	while unsort.length != 0
		
		while unsort[i] != nil	 
			if ranking  < unsort[(i)]
				ranking = unsort[(i)]
			end
			i = i + 1
		end
			puts sorted
			
			sorted.push(ranking)
	end
	puts sorted
end



sortList( unlist, sortedList)