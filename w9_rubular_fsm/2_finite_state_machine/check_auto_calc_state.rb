require 'scanf'
files = ARGV[0] || "./*.o*"

TRANS = {
  wait_next: {xy_data: :searching},
  searching: {idle: :searching, z_data: :wait_next}
}

state = :wait_next

all_data = []
Dir.glob(files).each do |file|
  File.readlines(file).each do |line|
    case state
    when :wait_next
      if line.match(/fix/)
        state = TRANS[state][:xy_data]
        all_data << line.scanf(
          "* fix calc kpoints:50, in_plane:%f, vertical:%f")
      end
    when :searching
      if line.match(/1 F=/)
        state = TRANS[state][:z_data]
        all_data[-1] << line.scanf("1 F= %f E0= %f  d E =%f")[0]
      else
        state = TRANS[state][:idle]
      end
    end
  end
end

all_data.each do |data|
  puts "[%5.3f, %5.3f, %10.5f]," % data
end

