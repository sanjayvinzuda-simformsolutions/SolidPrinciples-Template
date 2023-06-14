class Shape
  def calculate_area
    # Calculate and return the area of the shape
  end
end

class Rectangle < Shape
  def calculate_area
    # Calculate and return the area of the rectangle
    length * breadth
  end
end

class Square < Shape
  def calculate_area
    # Calculate and return the area of the square
    side * side
  end
end

def print_area(shape)
  area = shape.calculate_area
  puts "The area of the shape is #{area}"
end

rectangle = Rectangle.new
square = Square.new

print_area(rectangle) # Output: The area of the shape is ...
print_area(square)    # Output: The area of the shape is ...

# In this example, we are able to use instances of Rectangle and Square interchangeably with the Shape superclass. The calculate_area method in each subclass provides the specific implementation for calculating the area of the respective shape.

# By following the Liskov Substitution Principle, we ensure that the subclasses adhere to the behavior and contracts defined by the superclass, allowing for code reuse and maintaining the correctness of the program.
