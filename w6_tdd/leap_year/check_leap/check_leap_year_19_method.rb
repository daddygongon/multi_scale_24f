def leap?(year)
  if year % 400 ==0
    p true
  elsif year % 100 ==0
    p false
  elsif year % 4 == 0
    p true
  else
    p false
  end
end
[2000, 1900, 2004, 1999].each do |year|
  p year
  leap?(year)
end
