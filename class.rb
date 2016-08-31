#! /usr/bin/ruby -w

class A
  def fun
    puts "Inside function of A"
  end
end

class B < A
  def fun
    puts "Inside function of A"
  end
end

class C < B
  def method_missing (name, *args, &blocks)
    puts "Inside the Method missing function"
  end
end

testVar=C.new()
testVar.fun
