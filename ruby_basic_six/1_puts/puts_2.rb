# printf, print, puts, p
# "Hello World." string

name = 'World'            # '' 不変string
puts "Hello #{name}."  
puts "Hello \'#{name}\'." # '\' escape sequence

=begin
As most of the Ruby Linters
suggest
  use single quote literals for your strings
and
  go for the double ones
    in the case of
      interpolation/escaping sequences.
=end
