#! /usr/bin/ruby -w

# A basic program to study the arrays and hashes in Ruby.
arrayOne=[1, 2.3, "testStringOne", 'testStringTwo', {5=>'a', 7=>'b'}]

puts arrayOne[4][7]

arrayOne.each do |arrayElement|
  puts arrayElement
end

hashOne={1=>'a', 2=>'b', 3=>'c'}

(1..3).each do |n|
  puts hashOne[n]
end
