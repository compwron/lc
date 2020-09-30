# @param {String} s
# @return {Integer}
def roman_to_int(s)
  m = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000,
  }
  pieces = s.split('')
  skip_ = false
  sum = 0
  pieces.each_with_index do |c, idx|
    curr = m[c]
    if idx == pieces.count - 1
      if skip_
        skip_ = false
      else
        sum += curr
      end
    else
      n = pieces[idx + 1]
      nex = m[n]
      if curr < nex
        sum += nex - curr
        skip_ = true
      else
        if skip_
          skip_ = false
        else
          sum += curr
          skip_ = false
        end
      end
    end
  end
  sum
end


p roman_to_int('III') == 3
p roman_to_int('IV') == 4
p roman_to_int('IX') == 9
p roman_to_int('LVIII') == 58
p roman_to_int('MCMXCIV')#, roman_to_int('MCMXCIV') == 1994