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

p leap?(ARGV[0].to_i)

#+end_src

