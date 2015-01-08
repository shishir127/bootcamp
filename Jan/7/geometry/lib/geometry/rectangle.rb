module Geometry
  class Rectangle
    def initialize(*sides)
      @sides = sides
    end

    def perimeter
      2 * @sides.inject(0){|sum, side| sum + side.length}
    end

    def area
      @sides.inject(1){|product, side| product * side.length}
    end
  end
end
