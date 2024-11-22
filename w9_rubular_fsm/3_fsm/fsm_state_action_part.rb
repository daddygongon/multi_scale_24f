require 'scanf'
file = ARGV[0] || "./relax_calc.o22733"

TRANS = {
  wait_next: {
    '* fix ' => [:searching , :xy_data],
    :default => [:wait_next, :idle]
  },
  searching: {
    '   1 F' => [:wait_next, :z_data],
    :default => [:searching, :idle]
  }
}

state = :wait_next

all_data = []
i_line = 140
File.readlines(file)[i_line..i_line+40].each_with_index do |line, i|
  p [i,line]
  state, action = TRANS[state][line[0..5]] ||
                  TRANS[state][:default]
  p [state, action]
end
