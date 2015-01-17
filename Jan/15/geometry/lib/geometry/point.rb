module Geometry
  class Point
    attr_reader :x,:y
    def initialize(x,y)
      @x = x.to_f
      @y = y.to_f
    end

    def ==(point)
      return false unless point.is_a?(Point)
      ((@x == point.x) && (@y == point.y))
    end

    def hash
      [@x, @y].hash
    end

    def distance(point)
      Geometry::Length.new(0, Math.sqrt((@x-point.x)**2 + (@y-point.y)**2))
    end

    def x_distance(point)
      Geometry::Length.new(0, (@x-point.x).abs)
    end

    def y_distance(point)
      Geometry::Length.new(0, (@y-point.y).abs)
    end
  end
end
