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

describe "leap?" do
  it 'check the year leap or not' do
    expected = [true, false, false, true]
    [2004, 1999, 1900, 2000].each_with_index do |year, i|
      print year.to_s+", "
      expect(leap?(year)).to eq expected[i]
    end
  end
end

