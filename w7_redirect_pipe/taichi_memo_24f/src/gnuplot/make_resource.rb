srand(10)

puts '#include "time-queue.def"'
puts 'option: set xrange [0:.4]'
puts 'option: set yrange [0:10]'
puts 'show: 1, 3'

puts "\n"

puts 'name: maxp = 0.1, tau = 0.1'
for i in 0..4 do
  x=i
  printf("0.%g\t%d\n", x,rand(12))
end

puts "\n"

puts 'name: maxp = 0.2, tau = 0.1'
for i in 0..4 do
  x=i
  printf("0.%g\t%d\n", x,rand(12))
end

puts "\n"

puts 'name: maxp = 0.3, tau = 0.1'
for i in 0..4 do
  x=i
  printf("0.%g\t%d\n", x,rand(12))
end
