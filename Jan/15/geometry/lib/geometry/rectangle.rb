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

    def square_millimetre_area
      @sideA.length.millimetres * @sideB.length.millimetres
    end

    def square_centimetre_area
      @sideA.length.centimetres * @sideB.length.centimetres
    end

    def square_metre_area
      @sideA.length.metres * @sideB.length.metres
    end
  end
end