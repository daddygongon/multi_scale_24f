require 'colorize'

content = File.read('whole_output.txt')
puts content

puts content.uncolorize
