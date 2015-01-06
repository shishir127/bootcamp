#models a line
class Line
	attr_reader :x1,:x2,:y1,:y2
	def initialize(x1, y1, x2, y2)
		if x1>x2
			@x1 = x1;
			@x2 = x2;
		else
			@x2 = x1;
			@x1 = x2;
		end

		if y1>y2
			@y1 = y1;
			@y2 = y2;
		else
			@y2 = y1;
			@y1 = y2;
		end
	end

	def length
		Math.sqrt((@x1-@x2)**2 + (@y1-@y2)**2)
	end

	def ==(line)
		return false unless line.is_a?(Line)
		(@x1 == line.x1 && @x2 == line.x2 && @y1 == line.y1 && @y2 == line.y2)
	end

	def eql?(line)
		self.==(line)
	end
end