#! /usr/bin/ruby -w

# Program for testing out global variables with int, string and array values.

$global_var_test=10

class TestClass
  def getGlobal
    puts $global_var_test
  end
end

testVar = TestClass.new

testVar.getGlobal # print Int

$global_var_test='testStringOne'
testVar.getGlobal # print string


$global_var_test=['a', 1]
testVar.getGlobal # print string

$global_var_test=[1=>'a', 2=>'b']
testVar.getGlobal # print string

puts "END OF PROGRAM EXECUTION"
