=begin

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8
puts 9 / 2

puts 'Hours in a year = ', 365 * 24
puts 'Minute in a decade = ', 365 * 24 * 60 * 10
puts 'My age in seconds = ', 33 * 365 * 24 * 60 * 60
puts 'Book author\'s age = ', 1025000000 / 60 / 60 / 24 / 365 

puts 'I like ' + 'Apple pie.'
puts 'blink ' * 4

puts 2 * 5
puts '2' * 5
puts '2 * 5'

puts 'You\'re swell'
puts 'backslash at the end of a astring: \\'
puts 'up\\down'
puts 'up\down'

my_string = '...you can say that again...'
puts my_string * 2

name = 'Erik'
puts 'My name is ' + name + '.'

composer = 'Mozart'
puts composer + ' was "da bomb" in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.' 

my_own_var = 5 * (1+2)
puts my_own_var

my_own_var = 'I love ' + composer
puts my_own_var

composer = 'Billy Idol'

puts my_own_var

var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999999' .to_f
puts '99.9999' .to_i
puts ''
puts '5 is my favorite number! 25 too' .to_i
puts 'Your momma did.' .to_f
puts ''
puts 'stringy' .to_s
puts 3 .to_i

puts 'Hello theere, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts name * 3


puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts 'Nice to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

puts 'What\'s your favorite number?'
number = gets.chomp
puts 'Wouldn\'t you prefer ' + (number .to_i + 1) .to_s + '?'

=begin
Methods:
puts
.to_i
.to_s
.to_f
gets
.chomp
=
*
+ 
-
/
#
=end

=begin
puts self
=end

=begin

# 6.1

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse


puts 'Tell me your first name:'
first_name = gets.chomp
puts 'Tell me your middle name:'
middle_name = gets.chomp
puts 'Tell me your last name:'
last_name = gets.chomp

puts 'Nice to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '. Your name is ' + (first_name.length + middle_name.length + last_name.length).to_s + ' characters long' 


line_width = 50
puts '               Erik Theuer'.center(line_width)


line_width = 40
str = '--> text <--'
puts str.ljust(line_width)
puts str.center(line_width)
puts str.rjust(line_width)

# 6.2

puts 'Angry boss:'
puts 'What do you want?'
answer = gets.chomp
puts 'WHADDAYA MEAN "' + answer.upcase + '"?!? YOUR\'RE FIRED!'

=end

=begin
	
line_width = 50
puts 'Table of Contents'.center(line_width)
puts 'Chapter1: Getting Started'.ljust(line_width/3) + 'page'.rjust(line_width/3) + '1'.rjust(line_width/3)
puts 'Chapter2: Numbers'.ljust(line_width/2) + 'page'.rjust(line_width/3) + '9'.rjust(line_width/3)
puts 'Chapter3: Letters'.ljust(line_width/2) + 'page'.rjust(line_width/3) + '13'.rjust(line_width/3)

=end

=begin

# 6.4

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts (5-2).abs
puts (2-5).abs

=end

# 6.5

=begin

puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)
puts rand (99999999999999999999999)
puts 'The weatherman said there is a '
puts rand(101).to_s + '% chance of rain,'

puts Math::PI

=end

# 7.1


=begin
puts 'cat' < 'dog'
puts 'anton' > 'brazil'
puts 'anton' > 'Brazil' #maiúsculas vêm antes de todas
puts 'anton' > 'Brazil'.downcase
=end


# 7.2

=begin

puts 'I am a fortune teller. Tell me your name:'
name = gets.chomp

if name == 'Erik'
	puts 'I see great things in your future, ' + name + '.'
else
	puts 'Your future is... oh my! Look at the time!'
	puts 'I really have to go, sorry!'
end

=end
	
# 7.3

=begin
	
input = ''

while input != 'bye'
	puts input
	input = gets.chomp
end



while true
	input = gets.chomp
	puts input
	if input == 'bye'
		break
	end
end

puts 'Come again soon!'

=end

# 7.4

=begin

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris' || name == 'Katy'
	puts 'What a lovely name!'
end

=end

# 7.5

# Deaf Grandma

=begin

puts 'HEY THERE, PEACHES! GIVE GRANDMA A KISS!'
saying = ''
while true
	said = gets.chomp
	if said == 'BYE'
		puts 'BYE SWEETIE!'
		break
	end

	if said.upcase != said
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	end
end

=end

# Deaf Grandma Extended (INCOMPLETO)

	# Solução ET
=begin

puts 'HEY THERE, SWEETIE! GIVE GRANDMA A KISS!'
said = ''
bye_count = 0
while true
	said = gets.chomp
	if said == 'BYE'
		bye_count += 1
		if bye_count == 3
			puts 'BYE SWEETIE!'
			break
		end
	else
		bye_count = 0
		if said.upcase != said
			puts 'HUH?! SPEAK UP, SONNY!'
		else
			puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
		end
	end
end

=end

	# Solução livro

=begin

puts 'HEY THERE, SWEETIE! GIVE GRANDMA A KISS!'
bye_count = 0

while true
	said = gets.chomp
	if said == 'BYE'
		bye_count += 1
	else
		bye_count = 0
	end

	break if bye_count >= 3

	response = if said != said.upcase
		'HUH?! SPEAK UP SONNY!'
	else
		'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	end

	puts response
end

puts 'BYE-BYE SWEETIE!'

=end

# Leap years

=begin
Leap years. Write a program that asks for a starting year and an
ending year and then puts all the leap years between them (and
including them, if they are also leap years). Leap years are years
divisible by 4 (like 1984 and 2004). However, years divisible by
100 are not leap years (such as 1800 and 1900) unless they are
also divisible by 400 (such as 1600 and 2000, which were in fact
leap years). What a mess!
=end

## INCOMPLETO

# Solução ET

=begin

puts 'LEAP YEAR CALCULATOR'
puts 'Starting year:'
start_year = gets.chomp.to_i
puts 'Ending year:'
end_year = gets.chomp.to_i

year = start_year

while year <= end_year
	if year % 4 == 0
		if year % 100 != 0 || year % 400 == 0
			puts year
		end
	end
	year += 1
end

=end

# Solução livro

=begin

puts 'LEAP YEAR CALCULATOR'
puts 'Starting year:'
start_year = gets.chomp.to_i
puts 'Ending year:'
end_year = gets.chomp.to_i

(start_year..end_year).each do |year|
	next if year % 4 != 0
	next if year % 100 == 0 && year % 400 !=0
	puts year
end

=end

# 8

=begin

names = ['Rudi', 'Inge', 'Erik', 'Karl']
names.each do |name|
	puts 'I love ' + name + '!'
	puts names.join(', ')
end 

3.times do 
	puts 'We are the best!!!'
end

=end

# 8.3

# Add items to array

# Solução ET

=begin

list = []
i = 'asasasas'
while i != ''
	i = gets.chomp
	list.push(i)
end
puts list.sort

=end

# Solução livro

=begin

list = []
while true
	word = gets.chomp
	break if word.empty?
	list << word
end
puts 'Here is your sorted array:'
puts list.sort

=end

## Table of contents

=begin

title = 'Table of contents'

contents = [
			[1, 'Getting Started',1],
			[2, 'Numbers', 9],
			[3, 'Letters', 13]
			]

line_width = 50
puts title.center(line_width)

contents.each do |i|
	chapter = i[0]
	name = i[1]
	page = i[2]
	
	beginning = 'Chapter ' + chapter.to_s + ': ' + name
	ending = page.to_s

	puts beginning.ljust(line_width/3)
	puts ending.rjust(line_width)
end

=end

# Chapter 9 - Writing your own methods

=begin
	
rescue Exception => e
	
end

def say_moo(number_of_moos)
	puts 'moooo....' * number_of_moos
end

say_moo(3)

def double_this num
	num_times_2 = num*2
	puts num.to_s + ' doubled is ' + num_times_2.to_s
end

double_this 8
puts double_this 8

double_this 44
puts num_times_2.to_s

=end

# 9.3

=begin
x = 10
my_number = x/2
puts my_number
=end

# 9.4

=begin
		
def say_moo number_of_moos
	puts 'mooooooo...'*number_of_moos
# 'yellow submarine'
end
x = say_moo 3
#puts x.capitalize

=end


=begin
def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end

#	answer
end

puts 'Hello, and thank you for taking this survey.'
puts 

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for your participation'
puts
puts wets_bed
=end

# 9.5

# Opção 1

=begin
def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

puts 'Hello, and thank you for taking this survey.'
puts 

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you!'
puts
puts wets_bed
=end

# Opção 2

=begin
def ask question
	while true
		puts question
		answer = gets.chomp.downcase

		return true if answer == 'yes'
		return false if answer == 'no'

		puts 'Please answer "yes" or "no"'
	end

	answer
end

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?' 
=end

# 9.5

# Transform number into old-school roman numeral

# M = 1000
# D = 500
# C = 100
# L = 50
# X = 10
# V = 5
# I = 1

=begin
puts ' Number to be converted: '
number = gets.chomp.to_i

m = number / 1000
d = number % 1000 / 500
c = number % 1000 % 500 / 100
l = number % 1000 % 500 % 100 / 50
x = number % 1000 % 500 % 100 % 50 / 10
v = number % 1000 % 500 % 100 % 50 % 10 / 5
i = number % 1000 % 500 % 100 % 50 % 10 % 5


puts 'M' * m + 'D' * d + 'C' * c + 'L' * l + 'X' * x + 'V' * v + 'I' * i
=end

# otimizando A:

=begin
	
def old_roman_numeral num
	roman = ''

	roman = roman + 'M' * (num / 1000)
	roman = roman + 'D' * (num % 1000 / 500)
	roman = roman + 'C' * (num % 500 / 100)
	roman = roman + 'L' * (num % 100 / 50)
	roman = roman + 'X' * (num % 50 / 10)
	roman = roman + 'V' * (num % 10 / 5)
	roman = roman + 'I' * (num % 5)
	roman
end

puts old_roman_numeral(1777)
=end

# otimizado B
=begin
def old_roman_numeral num
raise 'Must use positive integer' if num <= 0
roman = ''
roman << 'M' * (num / 1000)
roman << 'D' * (num % 1000 / 500)
roman << 'C' * (num % 500 / 100)
roman << 'L' * (num % 100 / 50)
roman << 'X' * (num % 50 / 10)
roman << 'V' * (num % 10 / 5)
roman << 'I' * (num % 5 / 1)
roman
end
puts(old_roman_numeral(1777))
=end



# Transform number into modern roman numeral


=begin
def modern_roman_numeral num
raise 'Must use positive integer' if num <= 0

roman = ''

thous 	= (num / 1000)
hunds 	= (num % 1000 / 100)
tens 	= (num % 100 / 10)
ones	= (num % 10)

puts 'Check:'
puts 'thous = ' + thous.to_s
puts 'hunds = ' + hunds.to_s
puts 'tens = ' + tens.to_s
puts 'ones = ' + ones.to_s

roman = 'M' * thous

	if hunds == 9
		roman += 'CM'
	elsif hunds == 4
		roman += 'CD'
	else
		roman += 'D' * (num % 1000 / 500)
		roman += 'C' * (num % 500 / 100)
	end



	if tens == 9
		roman += 'XC'

	elsif tens == 4
		roman += 'XL'

	else
		roman += 'L' * (num % 100 / 50)
		roman += 'X' * (num % 50 / 10)
	end


	if ones == 9
		roman += 'IX'

	elsif ones == 4
		roman += 'IV'

	else
		roman += 'V' * (num % 10 / 5)
		roman += 'I' * (num % 5 / 1)
	end

end


puts 'Modern roman = ' + (modern_roman_numeral(1999)) 
=end 

# Há uma implementação melhor proposta pelo autor, mas que ainda não entendi

# 10.1 Factorials
=begin
def factorial num
	if num < 0
		return 'You can\'t take the factorial of a negative number!'
	end

	if num <= 1
		1
	else
		num * factorial(num-1)
	end
end

puts factorial(4)
puts factorial(30)
=end

# 10.2 Sorting (pag. 104 do pdf)

# IMCOMPLETO

def sort some_array 
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array


end








