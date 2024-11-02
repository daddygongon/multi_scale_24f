#!/usr/bin/env ruby

dryrun = true

["git add -A",
"git commit",
#puts "git commit -m \'first commit\'"
"git pull origin main",
"git push origin main"].each do |comm|
  if drurun == true
    puts comm
  else
    puts comm
    system comm
  end
end
