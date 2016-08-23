#! /usr/bin/ruby -w

END {
  puts "End Hello World"
}

# Adding a comment for testing
BEGIN {
  puts "Begin Hello World" # Testing for comment here
}

puts "Main Hello World"

=begin
puts "Commented out Hello World"
=end
