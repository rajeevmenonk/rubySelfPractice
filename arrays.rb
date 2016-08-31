#! /usr/bin/ruby -w

puts "#####################################################"
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

puts "Sum of the first and second is #{arrayOne[1] + arrayOne[0]}"

a = 10
b = 20
c = 30
a, b = b, a

puts "A, B and C are #{a} #{b} #{c}"

puts defined? puts
stringOne='One'
stringTwo='Two'
puts "Test "+stringOne+stringTwo

$i = 10
$num = 5
begin
  puts("Inside the loop i = #$i" )
  $i +=1
end while $i < $num

n=10
for i,j in 0..n
   puts "Value of local variable is #{i} #{j}"
end

def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}
