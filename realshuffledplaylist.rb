#playlist testing out YAML stuff
#1 goal first load a bunch of file names
#2 add them to a list
#3 shuffle away
# Dir.chdir 'C:\Users\Keith\Music'
def supershuffle list
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

playlist = Dir['C:/Users/Keith/Downloads/**/*.{mp3}']

puts playlist
puts "What do you want to name your playlist: "
filename = gets.chomp + '.m3u'

puts filename
i=0
supershuffle(playlist)

File.open filename, 'w' do |f|
	while i != playlist.length
		f.write "#{playlist[i]}\n"
		i = i +1
	end
end





