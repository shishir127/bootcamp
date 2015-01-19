module Geometry
  class Area
    def initialize(length1, length2)
      @area = length1.millimetres * length2.millimetres
    end

    def square_millimetres
      @area
    end

    def square_centimetres
      @area / (10.0 * 10.0)
    end

    def square_metres
      square_centimetres / (100.0 * 100.0)
    end
  end
end