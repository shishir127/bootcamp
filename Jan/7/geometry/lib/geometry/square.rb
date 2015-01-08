module Geometry
  class Square
    def initialize(side)
      @rect = Rectangle.new(side, side)
    end

    def area
      @rect.area
    end
  end
end