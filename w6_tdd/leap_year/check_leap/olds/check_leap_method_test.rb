#+begin_src ruby
def leap?(year)
  if year%4 == 0
    if year%100 == 0
      if year%400 == 0
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end

[2004, 1999, 1900, 2000].each do |year|
  p year
  p leap?(year)
end
#+end_src

