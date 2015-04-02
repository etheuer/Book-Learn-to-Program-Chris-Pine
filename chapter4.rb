# CHAPTER 4


=begin Ask for person's name and greet them

puts 'What is your fist name?'
first_name = gets.chomp()
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Nice to meet you, '+first_name+' '+middle_name+' '+last_name

=end


=begin Ask for favotie number and suggest a bigger and better number

puts 'What\'s your favorite number?'
favorite_number = gets.chomp.to_i
puts 'Why not try '+(favorite_number+1).to_s+'? It\'s bigger and better!'

= end

	