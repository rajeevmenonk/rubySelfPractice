#! /usr/bin/ruby -w

# Program to define and study about classes

# The class is meant to save the name and the phone number for any person.
class PersonClass 
  @@numberOfPersons=0
  DEFAULT=100

  def initialize ( name, phone=DEFAULT)
    @name=name
    @phone=phone
    @@numberOfPersons=@@numberOfPersons+1
  end

  def getName 
    puts @name
    puts "The name of the person is #{@name}"
  end

  def getNumber
    puts @phone
  end

  def returnName
    @name
  end

  def getNumberInit
    puts @@numberOfPersons
  end
end

personOne = PersonClass.new('PersonOne', 1)
personOne.getNumberInit

personTwo = PersonClass.new('PersonTwo', 2)
personThree = PersonClass.new('PersonThree')

personOne.getName
personOne.getNumberInit
puts personTwo.returnName
personThree.getNumber
# A class employee needs to be inherit from the class PersonClass.
