# Table of contents, revisited. 
# Rewrite your table of contents program (here…). 
# Start the program with an array holding all of the information
# for your table of contents (chapter names, page numbers, and so on). 
# Then print out the information from the array in a beautifully formatted
# table of contents.

# Table of Contents 

# Chapter 1: Getting Started page 1
# Chapter 2: Numbers page 9
# Chapter 3: Letters page 13

contents =['Chapter 1: Getting Started', 'page 1',
'Chapter 2: Numbers', 'page 9',
'Chapter 3: Letters', 'page 13']

puts "Table of Contents"
line_width = 50

prev_length = 0

contents.each do |con|
	if con.include? 'page'
		puts con.rjust( line_width - prev_length)

	else
		print con
		prev_length = con.length
	end
end