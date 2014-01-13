#photo app
#move files from one folder to another and then change name

#change to local directory where we want the files to go
Dir.chdir 'C:\Users\Keith\Pictures'

#locate pictures to move
pic_names = Dir['C:/Users/Keith/Videos/testpic/*.{	jpg}']

puts pic_names

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length } files: "

#this will be our counter. We'll start at 1
pic_number = 1

pic_names.each do |name|
	print '.' #progress bar

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg"
	else
		"#{batch_name}#{pic_number}.jpg"
	end

	if File.exist? new_name
		puts "#{new_name} already exist"
		exit
	end

	File.rename name, new_name

	#increment
	pic_number=pic_number +1

end

puts 
puts "Done"