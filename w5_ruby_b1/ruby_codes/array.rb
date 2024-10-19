name = 'world'
strings = ["Hello", name]
p strings                  # =>["Hello", "world"]

puts strings.join(" ")+"." # => Hello world.


p Dir.glob('*')
# ["array.rb", "array.rb~", "if_else.rb", "loop.rb", "method.rb", "method.rb~", "name.rb", "name.rb~", "puts.rb"]
