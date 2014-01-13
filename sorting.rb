unsorted_list = ['chearman','bernace','abe', 'abe', 'abeljkyjfgfs','xeryl','yackie','zash','lahoo','dira']



def sort some_array  #  This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	still_unsorted_list =[]

	if unsorted_array.empty?
		return []
	end	

	current_lowest = unsorted_array.pop

	while unsorted_array.empty? != true #while it is not empty to run through the whole unsortedarray

		#if the array last value is bigger than the current lowest value
		#take the last (the one we just checked) and put it in the stillunsorted
		if unsorted_array.last >	current_lowest
			still_unsorted_list.push(unsorted_array.pop)
		#if the currentlowest is not the lowest of the two comparissons
		#put it on the still undorded list
		#take the last one off the unsorted and put it as the new currentlowest
		else
			still_unsorted_list.push(current_lowest)
			current_lowest = unsorted_array.pop
			
		end
		
	end
	

	sorted_array.push(current_lowest) 
	recursive_sort(still_unsorted_list, sorted_array)	

 return sorted_array

end

puts sort( unsorted_list)