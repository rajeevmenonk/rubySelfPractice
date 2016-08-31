#! /usr/bin/ruby -w

class Numeric
  include Enumerable
  def factorial
    (1..self).inject { |v,n| v*n } 
  end
end

puts 3.factorial
     
