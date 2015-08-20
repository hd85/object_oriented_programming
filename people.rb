class Person
  attr_accessor :name

  # def initialize(name)
  #   @name = name
  # end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

student = Student.new
student.name = "Cristina"
student.greeting
student.learn

instructor = Instructor.new
instructor.name = "Chris"
instructor.greeting
instructor.teach


# a student can't call the teach method because that method is not part of the student's instance
