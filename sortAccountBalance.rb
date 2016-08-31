#! /usr/bin/ruby -w

class SavingsAccount
  include Enumerable
  attr_accessor :available
  def initialize ( init )
    @available = init
  end
  def <=> ( compare_with )
    if @available > compare_with.available
      1
    elsif @available < compare_with.available
      -1
    else
      0
    end
  end
  def to_s 
    @available.to_s
  end
end

a = SavingsAccount.new (100)
b = SavingsAccount.new (200)
c = SavingsAccount.new (140)
puts a
puts b
puts c
puts [a,b,c].sort
