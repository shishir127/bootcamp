module Geometry
  class Rectangle
    def initialize(side_a, side_b)
      @side_a = side_a
      @sideB = side_b
    end

    def width
      @side_a.length
    end

    def height
      @sideB.length
    end

    def perimeter
      2 * (width + height)
    end

    def area
      width * height
    end
  end
end
