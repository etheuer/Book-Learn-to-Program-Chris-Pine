#Chapter 9 - Classes

=begin find out time I was born:

time = Time.new
puts 'Time now: ' + time.to_s
time_born = Time.mktime(1980, 7, 6, 12, 26)
puts 'Time born: ' + time_born.to_s 
time_billion_s_after_born = time_born + (10**9)
puts 'Time a billion seconds after born: ' + time_billion_s_after_born.to_s

=end



=begin Tell person how old they are:

time = Time.new
puts 'What year were you born?'
year_born = gets.chomp
puts 'What month were you born?'
month_born = gets.chomp
puts 'What day were you born?'
day_born = gets.chomp
time_born = Time.mktime(year_born, month_born, day_born)
years_old = (time - time_born) / 60 / 60 / 24 / 365
puts 'You are ' + years_old.to_i.to_s + ' years old!'
puts 'SPANK ' * years_old

=end



=begin hashes:

color_array = []
color_hash = {}

color_array[0] = 'red'
color_array[1] = 'green'
color_array[2] = 'blue'

color_hash['strings'] = 'red'
color_hash['numbers'] = 'green'
color_hash['keywords'] = 'blue'

puts color_array
puts color_hash

color_array.each do |color|
	puts color
end

color_hash.each do |color_code, color|
	puts "Color for #{color_code} is: " + color
end

class Integer
	def to_eng
		if self == 5
			puts 'five'
		else
			puts 'fifty-eigth'
		end
	end
end

puts 5.to_eng
puts 9876761.to_eng

=end

=begin Define a classe for dice:

class Die
	def roll
		1 + rand(6)
	end
end

dice = [Die.new, Die.new]

dice.each do |die|
	puts die.roll
end

=end





=begin Use instance variables to use the dice roll value on in other methods in the Die object

class Die
	
	def initialize
		roll
		show_side
	end
	
	def roll
		@number_showing = 1 + rand(6)
	end

	def show_number
		@number_showing
	end 

	def show_side
		adjacent_sides = {1 => [2, 3, 4, 5], 2 => [1, 3, 4, 6], 3 => [1, 2, 4, 5], 4 => [1, 2, 5, 6], 5 => [1, 3, 4, 6], 6 => [2, 3, 4, 5]}
		possible_sides = adjacent_sides[@number_showing]
		possible_sides.sample
	end

end

die = Die.new
#die.roll
#puts die.show_number
#puts die.show_number
#die.roll
#puts die.show_number
#puts die.show_number

#puts Die.new.show_number

die.roll
puts 'Number showing: ' + die.show_number.to_s
puts 'Side showing: ' + die.show_side.to_s

=end


# create Dragon

class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He´s full
		@stuff_in_intestine = 0 # He doesn't need to go

		puts @name + " is born."
	end

	def feed
		puts 'You feed ' + @name + '.'
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts 'You walk ' + @name + '.'
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts @name + ' snores, filling the room with smoke'
			end
		end
		if @asleep
			@asleep = false
			puts @name + ' wakes of slowly.' 
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air.'
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts 'but wakes when you stop.'
		end
	end

	private

	# "private" means that the methods defined here are
  	# methods internal to the object.  (You can feed
  	# your dragon, but you can't ask him if he's hungry.)

	def hungry?
		# Method names can end with "?".
	    # Usually, we only do this if the method
	    # returns true or false, like this:
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
		# move food from belly to intestine
			@stuff_in_belly -= 1
			@stuff_in_intestine += 1
		else # our dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly.'
			end
			puts @name + ' is starving! In desperation, he ate YOU!'
			exit #this quits the program 
		end
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts 'Woops...' + @name + ' had an accident!'
		end
		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + '\'s stomach grumbles...'
		end
		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' does the potty dance...'
		end
	end
end

#pet = Dragon.new 'Sauro'
#pet.feed
#pet.toss
#pet.walk
#pet.put_to_bed
#pet.rock
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed

puts 'What is the new dragon\'s name?'
name = gets.chomp
pet = Dragon.new(name)

while true
	puts 'Waiting for command (feed, walk, toss, put_to_bed, rock, exit):'
	command = gets.chomp
	exit if command == 'exit'
	if pet.respond_to?(command)
		pet.send command
	end	
end


=begin Create Orange Tree

class OrangeTree

	def initialize
		@age = 0
		@height = 0
		@orange_count = 0
	end

	def height
		puts "The orange tree is #{@height} m high."
	end

	def one_year_passes
		@age += 1
		exit if @age >= 10
		@orange_count = 0
		@height += 1.5
		@orange_count = @age*2 if @age >= 3
	end

	def count_oranges
		puts "Tree has #{@orange_count} oranges."
	end

	def pick_orange
		if @orange_count >= 1
			@orange_count -= 1
			puts "That orange was delicious! You should try them!"
		else
			puts "Sorry, no more oranges to be picked this year! Try the grocery store."
		end
	end

end

tree = OrangeTree.new
# see diffrence between both method below here 
1.times.map { tree.one_year_passes }
2.times do tree.one_year_passes end
tree.height
tree.count_oranges
3.times do tree.pick_orange end
tree.count_oranges
tree.one_year_passes
tree.count_oranges
tree.pick_orange
tree.count_oranges
tree.one_year_passes
tree.count_oranges

=end