module Geometry
  class Length
    def initialize(metres=0, centimetres=0, millimetres=0)
      @millimetres = (metres * 100 + centimetres) * 10 + millimetres
    end

    def millimetres
      @millimetres
    end

    def centimetres
      @millimetres / 10.0
    end

    def metres
      centimetres / 100.0
    end

    def ==(length)
      @millimetres == length.millimetres
    end

    def hash
      [@millimetres].hash
    end

    def +(length)
      Geometry::Length.new(0, 0, @millimetres + length.millimetres)
    end

    def scale(scalar)
      Geometry::Length.new(0, 0, scalar * @millimetres)
    end
  end
end