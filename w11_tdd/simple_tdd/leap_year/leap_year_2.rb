def leap_year?(year)
  return true
end

[2004, 1999].each do |year|
  p [year, leap_year?(year)]
end
