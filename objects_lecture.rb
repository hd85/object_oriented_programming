class Point
  # attr_reader :x, :y
  # attr_writer :x, :y
  attr_accessor :x, :y

#   @x's scope is here
  def initialize(x_coord, y_coord)    #constructor
    @x = x_coord
    @y = y_coord
  end

  # #getter method
  # def x
  #   @x
  # end

  # #getter method
  # def y
  #   @y
  # end

  # #setter method
  # def x=(x)
  #   @x = x
  # end

  # #setter method
  # def set_y(y)
  #   @y = y
  # end


  def display
    "(#{@x}, #{@y})"
  end

  def to_s                #convert to string
    # "(#{@x}, #{@y})"
    display
  end

  # add will take an instance of a Point class
  # and return a new instance of Point class
  def add(point)
    Point.new(@x + point.x, @y + point.y)
  end
end


class Line
  def initialize(poin1, point2)
    @point1 = point1
    @point2 = point2
  end

  def to_s
    "#{@point1}------#{@point2}"
  end
end



p1 = Point.new(1, 2)   #instance is another name for 'object'
# puts point.x


#change the point x cood to 2
# point.x=(2)
# point.x = 2
# puts point.x

p2 = Point.new(3, 4)

#p3 = Point.new(p1.x + p2.x, p1.y + p2.y)
p3 = p1.add(p2)
# p3 = p1 + p2
puts p3

line = Line.new(p1, p2)
puts line

# class Person
#   @@class_variable = "this is a class variable"

#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def to_s # this is an instance method. you can call it on an instance
#     "#{@last_name}, #{@first_name}"
#   end
# end

#   person = Person.new("Don", "Draper") # .new is a class method
#   puts person