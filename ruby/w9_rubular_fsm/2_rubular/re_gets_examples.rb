# file:./re_gets_examples.rb

line = "* fix calc kpoints:50, in_plane:0.98, vertical:1.00"

string = Regexp.new("\\* fix calc kpoints:50, in_plane:(.+), vertical:(.+)")
line =~ string
p [$1.to_f, $2.to_f] #=> [0.98, 1.00]

res = line.scan(string)
p res #=> [["0.98", "1.00"]]
p res[0].map(&:to_f) #=> [0.98, 1.0]

p m = line.match(string) 
#=> #<MatchData "* fix calc kpoints:50, in_plane:0.98, vertical:1.00" 1:"0.98" 2:"1.00">
p [m[1].to_f, m[2].to_f] #=> [0.98, 1.0]

require 'scanf'
p line.scanf("* fix calc kpoints:50, in_plane:%f, vertical:%f")
#=>[0.98, 1.0]


