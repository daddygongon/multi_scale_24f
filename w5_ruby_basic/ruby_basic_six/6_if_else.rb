Dir.glob('*').each_with_index do |file, i|
  if i%2==0
    p [i, file]
  else
    p [file]
  end
end

