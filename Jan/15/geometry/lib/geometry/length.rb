module Geometry
  class Length
    def initialize(metres=0, centimetres=0, millimetres=0)
      @length = (metres * 100 + centimetres) * 10 + millimetres
    end

    def millimetres
      @length
    end

    def centimetres
      @length / 10.0
    end

    def metres
      centimetres / 100.0
    end

    def ==(length)
      @length == length.millimetres
    end

    def hash
      [@length].hash
    end

    def +(length)
      Geometry::Length.new(0, 0, @length + length.millimetres)
    end

    def scale(scalar)
      Geometry::Length.new(0, 0, scalar * @length)
    end
  end
end