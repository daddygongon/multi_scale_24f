file = ARGV[0] || 'hyper_card_readme.org'
p ['source : ', file]
file_candidates = []
File.readlines(file).each do |line|
#  p line
  if m=line.match(/file:(.*)/)
    file_candidates << m[1].split(']')[0]
  end
end

file_candidates.each do |file|
  paths = file.split('/')
  paths.delete_at(0) if paths[0] == '.'
  system "ls ../**/#{paths[0]}/*.org"
end
