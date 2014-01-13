require 'yaml' #woot require

M = 'land'
o = 'water'

test_array =  true

# Here's half of the magic:
test_string = test_array.to_yaml
#you see? YAML description of test_array

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
	f.write test_string
end

read_string = File.read filename

#And the other half of the magic:
read_array = YAML::load read_string

puts (read_string == test_string)
puts (read_array == test_array)

 