#! /usr/bin/ruby -w

h = { 'a' => 'a', 1=>'e', "b"=>'2', "d"=>'x'}
puts h
puts h.sort.to_h


arrValues = [1, 2, 3, 4]
arrValues.map do |num|
  num = num + 1
end
puts arrValues[1]
