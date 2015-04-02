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


#Take number and transform into English number 

def english_number number
	puts 'Number must be positive' if number < 0
	puts 'zero' if number == 0 

	
	units_in_english = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	tens_in_english = ['', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', '']
	thousands_exponentials_in_engligh = {1 => 'thousand', 2 => 'million', 3 => 'billion', 4 => 'trillion' }


	num_string = ''
	# number in English for all positive non-zero numbers

	left = number
	# amount left to be translated

	if left > 0

		exp = Math.log(number,1000).to_i
		# finds out order of magnitude of 'left' variable, as exponential of thousands

		while left > 0 && exp >= 1
			write = left / (1000 ** exp)
			left = left - ( write * (1000 ** exp) )
			if write > 0
				num_string = num_string + units_in_english[write] + ' ' + thousands_exponentials_in_engligh[exp]
			end
			exp = Math.log(left,1000).to_i unless left == 0
		end

	end

=begin old version of if for thousands
	# matar esse if:
	write = left/1000
	# finds out how many thousands
	left = left - write*1000
	# finds out how much is left after taking out the thousands

	if write > 0
		num_string = num_string + units_in_english[write] + ' thousand '
	end

=end

	write = left/100
	# finds out how many hundreds
	left = left - write*100
	# finds out how much is left after taking out the hundreds

	if write > 0
		num_string = num_string + units_in_english[write] + ' hundred'
	end

	if left >= 20
		write = left / 10
		# finds out how many tens
		num_string = num_string + ' ' + tens_in_english[write]
		left = left - write * 10
		# finds out how much is left after taking out the tens
		num_string = num_string + '-' if left > 0 
		# appends '-' in case of 'trirty-four', for example
	end
	if left > 0
		write = left
		num_string = num_string + units_in_english[write]
	end

	num_string
end

puts english_number 0
puts english_number 1
puts english_number 100
puts english_number 1000
puts english_number 1001
puts english_number 1010
puts english_number 1011
puts english_number 1020
puts english_number 1024
puts english_number 1111
puts english_number 1000000
puts english_number 999111
puts english_number 19999999













