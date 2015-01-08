module Geometry
  class Square < Geometry::Rectangle
    def initialize(side)
      @side = side
    end

    def width
      @side.length
    end

    def height
      @side.length
    end
  end
end