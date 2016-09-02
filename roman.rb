#! /usr/bin/ruby -w

# The algo is to reverse the string and process the chars one by one.
# For almost all the numerals, adding up the individual values would suffice.
# In cases where the numeral is if the format <NUMBER A> <A NUMBERAL GREATER THAN A>
# the value is the greater numeral - the smaller numeral. For example. iv and ix.
# In these cases, the value is 5-1 or 10-1.

class Roman
  DIGITS = {
    'I' => 1,    'V' => 5,    'X' => 10,    'L' => 50,
    'C' => 100,  'D' => 500,  'M' => 1000,
  }

  def roman_to_int(str)
    prev_digit=0
    sum=0
    str.reverse.upcase.each_char do |char|
       charValue = DIGITS[char]
       if sum != 0 && prev_digit > charValue
         sum -= charValue
       else
         sum += charValue
       end
       prev_digit=charValue
    end
    return sum
  end

  def method_missing(methId)
    str = methId.id2name
    roman_to_int(str)
  end
end

r = Roman.new
puts r.iv      #=> 4
puts r.xxiii   #=> 23
puts r.mm      #=> 2000

