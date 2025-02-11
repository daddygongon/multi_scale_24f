def leap_year?(year)
  if year % 4 == 0
    true
  else
    false
  end
end

[2004, 1999].each do |year|
  p [year, leap_year?(year)]
end
