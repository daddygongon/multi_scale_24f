[1900,2004,1999].each do |year|
  p year
  if year % 100 ==0
    p false
    next
  end
  if year % 4 == 0
    p true
  else
    p false
  end
end
