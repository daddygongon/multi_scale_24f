def leap?(year)
  case
  when year % 400 ==0 ; return true
  when year % 100 ==0 ; return false
  when year % 4 ==0 ;   return true
  else ;                 return false
  end
end
[2000, 1900, 2004, 1999].each do |year|
  p year
  p leap?(year)
end
