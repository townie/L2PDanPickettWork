#playlist testing out YAML stuff
#1 goal first load a bunch of file names
#2 add them to a list
#3 shuffle away
# Dir.chdir 'C:\Users\Keith\Music'

playlist = Dir['C:/Users/Keith/Downloads/**/*.{mp3}']

puts playlist
puts "What do you want to name your playlist: "
filename = gets.chomp + '.m3u'

puts filename
i=0


File.open filename, 'w' do |f|
	while i != playlist.length
		f.write "#{playlist[i]}\n"
		i = i +1
	end
end





