#attempt like 20 at int to roman int

puts "put anumber in please"
convert = gets.chomp.to_i

#
thousand = convert / 1000
hundred = (convert / 100) - (thousand * 10)

tens = (convert /10) -(hundred * 10) - (thousand * 100)
ones = (convert/ 1) - (tens *10) -(hundred * 100) - (thousand * 1000)

# puts thousand.to_i
# puts hundred
# puts tens
# puts ones

roman = ''

roman = 'M' * thousand.to_i

if hundred == 4
	roman = roman + 'CD'
elsif hundred ==5
	roman = roman + 'D'
elsif hundred <4
	roman = roman + 'C' * hundred
elsif hundred == 9
	roman = roman + 'CM'
else
	roman = roman + 'D' + 'C' * (hundred.to_i-5)
end	

if tens == 4
	roman = roman + 'XL'
elsif tens ==5
	roman = roman + 'L'
elsif tens<4
	roman = roman + 'X' * tens
elsif tens == 9
	roman = roman + 'XC'	
else
	roman = roman + 'L' + 'X' * (tens.to_i-5)
end	


if ones == 4
	roman = roman + 'IV'
elsif ones ==5
	roman = roman + 'V'
elsif ones<4
	roman = roman + 'I' * ones
elsif ones == 9
	roman = roman + 'IX'	
else
	roman = roman + 'V' + 'I' * (ones.to_i-5)
end	







puts roman