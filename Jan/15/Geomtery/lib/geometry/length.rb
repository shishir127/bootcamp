module Geometry
  class Length
    def initialize(metres=0, centimetres=0, millimetres =0)
      @distance = (metres * 100 + centimetres) * 10 + millimetres
    end

    def centimetres
      @distance / 10.0
    end

    def millimetres
      @distance      
    end

    def metres
      (@distance / 10.0) / 100.0
    end
  end
end