# Chapter 7 - Flow Control

=begin "99 bottles of beer on the wall..." Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."

count = 99

while count < 100 and count > 1 
	puts "#{count} bottles of beer on the wall, #{count} bottles of beer.
Take one down and pass it around, #{count-1} bottles of beer on the wall."
	count -= 1
end

if count == 1
	puts "#{count} bottle of beer on the wall, #{count} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
	count -= 1
end

if count == 0
	puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."
end


puts 'End.'

=end


=begin Write a Deaf Grandma program.

bye_count = 0
while true
	puts "Talk to your grandma:"
	phrase = gets.chomp
	if phrase == "BYE"
		bye_count += 1
		break if bye_count >= 3
	else
		bye_count = 0
	end

	if phrase != phrase.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else 
		puts "NO, NOT SINCE #{rand(1930..1950)}!"
	end
end

=end


=begin Leap years - using while loop

puts "Enter starting year:"
start_year = gets.chomp.to_i
puts "Enter ending year:"
end_year = gets.chomp.to_i

year = end_year
while year >= start_year
	if (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
		puts year
	end
	year = year - 1
end

=end

=begin Leap years - using for loop

puts "Enter starting year:"
start_year = gets.chomp.to_i
puts "Enter ending year:"
end_year = gets.chomp.to_i

(start_year..end_year).each do |year|
	next if year % 4 != 0
	puts year unless year % 100 == 0 && year % 400 != 0
	year = year -1
end

=end




