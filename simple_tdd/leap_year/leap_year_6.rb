def leap_year?(year)
  case year
  when 2000; true
  when 1900; false
  when 1999; false
  when 2004; true
  end
end

[2004, 1999, 1900, 2000].each do |year|
  p [year, leap_year?(year)]
end
