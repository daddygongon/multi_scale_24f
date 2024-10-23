def leap_year?(year)
  if year % 100 ==0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

[2004, 1999, 1900].each do |year|
  p [year, leap_year?(year)]
end
