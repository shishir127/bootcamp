require "point"

#models a line
class Line
	attr_reader :start,:end
	def initialize(point1, point2)
		@start = point1
		@end = point2
	end

	def length
		@start.distance(@end)
	end

	def ==(line)
		return false unless line.is_a?(Line)
		((@start == line.start && @end == line.end) || (@start == line.end && @end == line.start))
	end

	def eql?(line)
		self.==(line)
	end

	def hash
		[@start.hash, @end.hash].hash
	end
end