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
      (@sideA.length + @sideB.length).scale(2)
    end

    def area
      Geometry::Area.new(@sideA.length, @sideB.length)
    end
  end
end