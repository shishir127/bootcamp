require 'rectangle.rb'

class CartesianRectangle
	def initialize(top_left, bottom_right)
		@topLeft = top_left
		@bottomRight = bottom_right
	end

	def width
		(@topLeft.x - @bottomRight.x).abs
	end

	def height
		(@topLeft.y - @bottomRight.y).abs
	end

	def perimeter
		2*(self.width+self.height)
	end

end