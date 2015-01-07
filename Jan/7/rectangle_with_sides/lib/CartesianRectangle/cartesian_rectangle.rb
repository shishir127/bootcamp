require 'rectangle.rb'

class CartesianRectangle
	def initialize(width, height)
		@width = width
		@height = height
	end

	def perimeter
		2*(@width+@height)
	end

	def area
		@width*@height
	end

end