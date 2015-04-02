# Chapter 5

=begin Capitalization

letters = 'aAbBcCdD'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize

letters = 'my name is bond. james bond.'
puts letters.capitalize

=end


=begin Angry Boss

puts 'What do you want?'
answer = gets.chomp
puts "WHADDAYA MEAN \"#{answer.upcase}\"?!? YOU\'RE FIRED!!" #Insert variable into string using "#{}" did only work if string is inside "" and not '' 

=end


=begin Line width and alignment

lineWidth = 80
str = 'I am Erik.'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.center (lineWidth/2)

=end

=begin Aligh Table of Contents

title = 'TABLE OF CONTENTS'
chapter1_name = 'Numbers'
chapter2_name = 'Letters'
chapter3_name = 'Variables'
chapter1_page = 1
chapter2_page = 72
chapter3_page = 118

lineWidth = 80
col1Width = lineWidth/4
col2Width = lineWidth/2
col3Width = lineWidth/4

puts title.center lineWidth
puts
puts 'Chapter 1:'.ljust(col1Width) + chapter1_name.ljust(col2Width) + "Page #{chapter1_page.to_s}".rjust(col3Width)
puts 'Chapter 2:'.ljust(col1Width) + chapter2_name.ljust(col2Width) + "Page #{chapter2_page.to_s}".rjust(col3Width)
puts 'Chapter 3:'.ljust(col1Width) + chapter3_name.ljust(col2Width) + "Page #{chapter3_page.to_s}".rjust(col3Width)

=end

