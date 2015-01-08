module Geometry
  class Square < Geometry::Rectangle
    def initialize(side)
      @sideA = side
      @sideB = side
    end
  end
end