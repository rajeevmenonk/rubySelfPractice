#! /usr/bin/ruby -w

class VowelFinder
  include Enumerable
  def initialize(string)
    @string = string
  end
  def vowel_finder
    @string.scan(/[aeiou]/).inject {|v, n| v+n}
  end
end 

vf = VowelFinder.new("The quick brown fox jumped over the lazy dog")
puts vf.vowel_finder
