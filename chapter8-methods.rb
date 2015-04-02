# Chapter 8 - Methods


=begin Student Survey

goodAnswer = false
while (not goodAnswer)
	puts 'Do you like ating tacos?'
	answer = gets.chomp.downcase
	if answer == 'yes' || answer == 'no'
		goodAnswer = true
	else
		puts 'Please answer "yes" or "no".'
	end 
end

=end




=begin sayMoo

def sayMoo numberofMoos
	puts 'Moooo...' * numberofMoos
	puts 'yellow submarine'
end

x = sayMoo 3
puts x

=end


=begin Student Survey B

def ask question
	goodAnswer = false
	while not goodAnswer
		puts question	
		reply = gets.chomp.downcase
		if reply == 'yes' || reply == 'no'
			goodAnswer = true
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	answer
end

ask 'Do you like tacos?'
wetsBed = ask 'Do you wet the bed?'

puts wetsBed

=end



=begin Exploring puts nil output vs return

def greeting(name)
	puts 'Hello, ' + name
end

greeting('Erik')

x = greeting('Erik')

puts x + 'Theuer'

=end


#=begin Take number and transform into English number 

def english_number number
	puts 'Number must be positive' if number < 0
	print 'zero' if number == 0

	units_in_english = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	tens_in_english = ['', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', '']
	multiples = {10 ** 12 => 'trillion', 10 ** 9 => 'billion', 10 ** 6 => 'million', 10 ** 3 => 'thousand', 10 ** 2 => 'hundred'}

	num_string = ""
	# number in English for all positive non-zero numbers

	left = number
	# amount left to be translated

	multiples.each do |key, value|
		# find out how many multiples:
		write = left / key
		# finds out how much is left after substractiong multiples:
		left = left - (write * key)
		if write >= 10
			num_string = num_string + (num_string.empty? ? "" : " ") + english_number(write) + ' ' + value
		end
		if write > 0 && write < 10
			num_string = num_string + (num_string.empty? ? "" : " ") + units_in_english[write] + ' ' + value
		end
	end

	if left >= 20
		write = left / 10
		# finds out how many tens
		num_string = num_string + (num_string.empty? ? "" : " ") + tens_in_english[write]
		left = left - write * 10
		# finds out how much is left after taking out the tens
		num_string = num_string + '-' if left > 0 
		# appends '-' in case of 'trirty-four', for example
	end

	if left > 0
		write = left
		num_string = num_string + ((num_string.empty? or num_string.end_with?("-"))  ? "" : " ") + units_in_english[write]
	end

	num_string
end

puts english_number 0
puts english_number 100
puts english_number 1000
puts english_number 999
puts english_number 1
puts english_number 11
puts english_number 111
puts english_number 999
puts english_number 1111
puts english_number 11111
puts english_number 111111
puts english_number 888
puts english_number 800
puts english_number 99
puts english_number 99000999121

#=end

#rewrite ninety-nive bottles of beer

count = 1

while count <= count and count > 1 
	puts "#{english_number count} bottles of beer on the wall, #{english_number count} bottles of beer.
Take one down and pass it around, #{english_number count-1} bottles of beer on the wall."
	count -= 1
end

if count == 1
	puts "#{english_number count} bottle of beer on the wall, #{english_number count} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
	count -= 1
end

if count == 0
	puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."
end

puts 'End.'













