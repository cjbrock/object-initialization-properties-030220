require 'pry'

class Person
  # attr_reader :energy_level
  # attr_writer :energy_level
  attr_accessor :energy_level, :name, :age

  # def energy_level 
  #   @energy_level
  # end

  # def energy_level=(el) 
  #   @energy_level = el
  # end

  def initialize(name, age)
    @name = name
    @age = age
    @energy_level = 100
  end

  def speak
    puts "hello"
  end

  def sneeze
    puts "Achoo! That food was really peppery."
  end

  def study
    @energy_level -= 20
    puts "I need a brain break. Energy level at #{energy_level}"

  end

  def sleep
    @energy_level += 25
    puts "feeling rested, energy level reset to: #{energy_level}"
  end

end

person1 = Person.new("Pharia", 21)
person2 = Person.new("Marsha", 21)

person1.study
person1.study
person1.study
person1.sleep

person2.sleep
person2.sleep
person2.sleep

binding.pry