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

if $PROGRAM_NAME == __FILE__
  p leap?(ARGV[0].to_i)
end


