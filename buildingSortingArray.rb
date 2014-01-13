# Building and sorting an array. 
# Write the program we talked about at the beginning of this chapter,
#  one that asks us to type as many words as we want 
#  (one word per line, continuing until we just
#  press Enter on an empty line)
#   then repeats the words back to us in alphabetical order. 
#   Make sure to test your program thoroughly; for example, 
#   does hitting Enter on an empty line always exit your program? 
#   Even on the first line? And the second? 
#   Hint: There's a lovely array method that will 
#   give you a sorted version of an array: sort. Use it!

puts "Build a list then sort it program"
puts "Your task is to enter words (one per line, please) then press ENTER"
puts "You will be able to add works to the list untill you leave a line blank and press enter"
puts "Please enter a new word"

loading_var = 0
loading_array =[]
notspace = true


while notspace == true
  loading_var = gets.chomp
    if loading_var != ""
      loading_array.push loading_var
    else
    
      notspace = false
    end

end  

puts loading_array.sort
# loaded_array = loading_array.sort

# loaded_array.each do |load|
#   puts load 
# end