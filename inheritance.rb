#! /usr/bin/ruby -w

class TestClass < String
  def to_s
    t = ""
    for s in @tags
      t += s.to_s + ", "
    end
    t = t[0 .. -3] # the whole string would be t[0 .. -1] (-1 is last char)
    super + " Tags: " + t
  end
end

a = TestClass.new ("testString")
puts a.to_s
