def leap?(year)
  case year
  when % 400 ==0 ; return true
  when % 100 ==0 ; return false
  when % 4 ==0 ;   return true
  else ;           return false
  end
end
[2000, 1900, 2004, 1999].each do |year|
  p year
  p leap?(year)
end
