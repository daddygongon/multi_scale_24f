def leap?(year)
  return case
         when year % 400 ==0 ; true
         when year % 100 ==0 ; false
         when year % 4 ==0   ; true
         else                ; false
         end
end
[2000, 1900, 2004, 1999].each do |year|
  p year
  p leap?(year)
end
