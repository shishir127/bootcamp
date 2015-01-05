class Line
	def initialize(x1, y1, x2, y2)
		@x1 = x1;
		@x2 = x2;
		@y1 = y1;
		@y2 = y2;
	end

	def length
		Math.sqrt((x1-x2)**2 + (y1-y2)**2)
	end
end