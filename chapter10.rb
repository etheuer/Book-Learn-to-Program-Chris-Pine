# Exercises from Chapter 10

=begin

def maybe_do some_proc
	if rand(2) == 0
		some_proc.call
	end
end

def do_twice some_proc
	some_proc.call
	some_proc.call
end

wink = Proc.new do 
	puts 'Wink.'
end

glance = Proc.new do
	puts 'Glance.'
end

maybe_do wink
do_twice glance

=end


### Exercises from https://www.youtube.com/watch?v=rY94UKbMrjo

=begin 1 - Block without parameter:

def test()
	puts 'You are in the method'
	yield
end

# Important: for a block to be called inside of a method, it has to have the same name as the method. If in the example below I change the name to 'test_2' it would not work
test { 
	puts 'You are in the block.'
}

=end

=begin 2 - Block with parameter:

def test ()
	puts 'You are in the method.'
	yield 5
end

test { |i| puts "You are in the block. Parameter \'#{i}\' received." }

=end

=begin 3 - BEGIN and END blocks

BEGIN {
	puts 'This code is run at the beginning of the program.'
}

END {
	puts 'This code is run at the end of the program.'
}

def test ()
	puts 'You are in the method.'
	yield 5
end

test { |i| puts "You are in the block. Parameter \'#{i}\' received." }

=end



### End of exercises from https://www.youtube.com/watch?v=rY94UKbMrjo

=begin I did not fully understand what it is doing here:

def do_until_false first_input, some_proc
	input = first_input
	output = first_input

	while output
		input = output
		output = some_proc.call input
	end

	input
end

build_array_of_squares = Proc.new do |array|
	last_number = array.last
	if last_number <= 0
		false
	else
		array.pop 						# take off the last number
		array.push last_number ** 2 	# and replace it with its square
		array.push last_number - 1 		# followed by the next smaller number
	end
end 

always_false = Proc.new do |just_ignore_me|
	false
end

puts do_until_false([5], build_array_of_squares).inspect
puts do_until_false('I\'m writing this at 3:00 AM. Someone knock me out!', always_false)

=end




=begin Passing a block to a method - Exercises from https://www.youtube.com/watch?v=Xc6sz1HJDEM

def test(&b) 
	3.times do b.call end 	#Here we have to use 'b.call' instead of 'yield' becaus the block is beign passed to the method as a parameter
end

test {
	puts 'Hello World!'
}

=end #### of Passing a block to a method - Exercises from https://www.youtube.com/watch?v=Xc6sz1HJDEM


=begin PROCS: Procs take a block of code an turn them into a normal object.
# Exercises from video https://www.youtube.com/watch?v=DBj6UDJVLW4

proc_object = Proc.new { puts 'I am a proc object' }

proc_object.call

=end


=begin Different ways to define and call a Proc (from https://www.youtube.com/watch?v=Km9RlUfmvJc)

# Define using 'Proc.new':

greeter = Proc.new do |name|
	puts "Hello, #{name}."
end

greeter.call 'Erik'

# Define using just 'proc':

greeter = proc do |name|
	puts "Hello, #{name}."
end

greeter.call 'Luis'


# Calling a proc in various ways

greeter = proc do |name|
	puts "Hello, #{name}."
end

greeter.call 'John'
greeter.('Anna')
greeter['Sarah']


=end ## of Different ways to define and call a Proc (from https://www.youtube.com/watch?v=Km9RlUfmvJc)


=begin 

	def greeter_method input, some_proc
		some_proc.call input
	end

	greeter_proc = proc do |name|
		puts "Nice to meet you, #{name}."
	end

	greeter_method 'Erik', greeter_proc

=end


=begin Build a method that takes thow procs as arguments

def compose proc1, proc2
	Proc.new do |x| 
		proc2.call(proc1.call(x))
	end
end

double_it = Proc.new do |x|
	x * 2
end

square_it = Proc.new do |x|
	x ** 2
end

double_then_square = compose double_it, square_it 

puts double_then_square.call(3)

=end


=begin Could not fully understand this:

class Array
	def each_even(&wasablock_nowaproc)
		is_even = true

		self.each do |object|
			if is_even
				wasablock_nowaproc.call object
			end

			is_even = (not is_even)
		end
	end
end


['apple', 'bad apple', 'cherry', 'durian'].each_even do |fruit| 
	puts 'Yum. I just love '+fruit+' pies, don\'t you?'
end

=end


=begin

# Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today. That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. Test your method out with a few different blocks (including the one I just gave you). Hint: You can use  Time.now.hour to get the current hour. However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12).

def dong
	# convert current hour into 12-hour format
	current_hour = Time.now.hour
#	current_hour = 23 # test purpose
	if current_hour == 0
		current_hour = 12
	elsif current_hour >= 13
		current_hour = current_hour -12
	end 
	current_hour.times do
		yield
	end
end

dong {
	puts 'DONG!'
}

=end

=begin Much better way

def grandfather_clock &block
	current_time = (0 + 12) % 12 + 1
	current_time.times(&block)
end

grandfather_clock { puts 'DONG' }

grandfather_clock

=end

=begin

Program Logger. Write a method called log, which takes a string description of a block and, of course, a block. Similar to  doSelfImportantly, it should puts a string telling that it has started the block, and another string at the end telling you that it has finished the block, and also telling you what the block returned. Test your method by sending it a code block. Inside the block, put another call to log, passing another block to it. (This is called nesting.) In other words, your output should look something like this:

Beginning "outer block"...
Beginning "some little block"...
..."some little block" finished, returning:  5
Beginning "yet another block"...
..."yet another block" finished, returning:  I like Thai food!
..."outer block" finished, returning:  false

=end


#=begin INCOMPLETE (Seen answer on Booke page 217 from pdf)

def log description#, &block
	puts 'Beginning "'+description+'".'
	block.call
	puts 'Ending "'+description+'", returning: ' 
end

#log { puts 'This is the clock content.' }

log 'test' 

#=end