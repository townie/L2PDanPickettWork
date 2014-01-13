#sorting a list NOT using a recursive function.
#To use


unsorted_list = ['chearman','bernace','abe', 'abe', 'abeljkyjfgfs','xeryl','yackie','zash','lahoo','dira']


def sort unsorted_list

	sorted =[]

	total_size = unsorted_list.length

	while unsorted_list.empty? != true
		# puts '!' *10
		# puts "This is the sortedlist:"
		# puts sorted
		# puts '-'*10
		# puts "This is the unsorted"
		# puts unsorted_list
		

		if unsorted_list.length != 0
		
			unsorted_list, sorted = onethrough(unsorted_list, sorted)
			
		else
			return sorted
		end		

	end

return sorted
end


#pre-condition: unsorted_list and sorted_list of any size are feed in
#internal: one iteration of checking a value against the whole list and finally adding the currentlowest to the next list
#post-condition: returned are a unsortedList-1 and the sortedList+1

#RETURNS UNSORTED, SORTED

def onethrough unsorted_list, sorted_list
still_unsorted_list=[]
current_lowest = unsorted_list.pop

	while unsorted_list.empty? != true #while it is not empty to run through the whole unsortedarray

		#if the array last value is bigger than the current lowest value
		#take the last (the one we just checked) and put it in the stillunsorted
		if unsorted_list.last >	current_lowest
			still_unsorted_list.push(unsorted_list.pop)
			
		#if the currentlowest is not the lowest of the two comparissons
		#put it on the still undorded list
		#take the last one off the unsorted and put it as the new currentlowest
		else
			still_unsorted_list.push(current_lowest)
			current_lowest = unsorted_list.pop
		
			
		end
		
	end
	sorted_list.push(current_lowest)


return still_unsorted_list, sorted_list

end

puts sort( unsorted_list)