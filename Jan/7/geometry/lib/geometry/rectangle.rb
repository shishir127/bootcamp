module Geometry
  class Rectangle
    def initialize(side_a, side_b)
      @sideA = side_a
      @sideB = side_b
    end

    def width
      @sideA.length
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
