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

describe "check the method : leap?" do
  it 'check the year leap or not' do
    expected = {2004 => true, 1999 => false, 1900 => false, 2000 => true}
    [2004, 1999, 1900, 2000].each do |year|
      print year.to_s+", "+expected[year].to_s+": "
      p expect(leap?(year)).to eq expected[year]
    end
  end
end

