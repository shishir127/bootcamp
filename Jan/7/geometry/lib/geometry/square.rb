module Geometry
  class Square < Geometry::Rectangle
    def initialize(side)
      super(side, side)
    end
  end
end