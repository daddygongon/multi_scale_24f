require 'scanf'
files = ARGV[0] || "./*.o*"

state = false
all_data = []
Dir.glob(files).each do |file|
  File.readlines(file).each do |line|
    if line.match(/fix/)
      all_data << line.scanf("* fix calc kpoints:50, in_plane:%f, vertical:%f")
      state = true
    end

    if state
      if line.match(/1 F=/)
        all_data[-1] << line.scanf("1 F= %f E0= %f  d E =%f")[0]
        state = false
      end
    end
  end
end

all_data.each do |data|
  puts "[%5.3f, %5.3f, %10.5f]," % data
end

