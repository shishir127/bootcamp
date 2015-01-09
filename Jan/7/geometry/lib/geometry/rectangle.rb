module Geometry
  class Rectangle

    def self.getSquare(side)
      Rectangle.new(side, side)
    end

    def initialize(side_a, side_b)
      @sideA = side_a
      @sideB = side_b
    end

    def perimeter
      2 * (@sideA.length + @sideB.length)
    end

    def area
      @sideA.length * @sideB.length
    end
  end
end