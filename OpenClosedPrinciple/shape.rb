class Shape
  def calculate_area(length, width)
    length * width
  end
end

class Circle < Shape
  def calculate_area(radius)
    Math::PI * (radius**2)
  end
end

# By extending the Shape class with the Circle class, we keep the existing code untouched and provide the ability to calculate the area of circles without modifying the original implementation. This adheres to the Open-Closed Principle.
