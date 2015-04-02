# Chapter 7 - Arrays

=begin

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts foods.to_s
puts foods.join(', ')

=end


=begin

#Let's write a program which asks us to type in as many words as we want 
#(one word per line, continuing until we just press Enter on an empty line), 
#and which then repeats the words back to us in alphabetical order.

array = []
puts "Enter items: "
	while true
		item = gets.chomp	
		break if item.empty?
		array.push item
	end
puts array.sort

# I was unable to sort the array withou using the sort method. Later I came across this material:
# http://www.sitepoint.com/sorting-algorithms-ruby/

=end



#Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array 
#holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out 
#the information from the array in a beautifully formatted Table of Contents.

array = [['Chapter 1', 'Numbers', 1],['Chapter 2', 'Letters', 72],['Chapter 3', 'Variables', 118]]

lineWidth = 80
col1Width = lineWidth/4
col2Width = lineWidth/2
col3Width = lineWidth/4

array.each do |i|
	puts 	i[0].to_s.ljust(col1Width) +
	 		i[1].to_s.ljust(col2Width) + 
	 		i[2].to_s.ljust(col3Width)
end



