#! /usr/bin/ruby -w

class VowelFinder
  include Enumerable
  def initialize(string)
    @string = string
  end

  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield 1
    end
  end
end 

puts VowelFinder.new("abacadabra").inject {|v, n| v+n}
