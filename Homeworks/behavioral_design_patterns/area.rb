# Template method Design Pattern
# https://cacoo.com/diagrams/fnlz5bSWSRPtuoAF

class Area
	def initialize *args ; end

	def calculate ; end

	def area
		calculate()
	end
end

class RectangularArea < Area
	def initalize(longitude, width)
		@longitude = longitude
		@width = width
	end

	def calculate
		(@longitude + @width) * 2
	end
end

def SquareArea < Area
	def initialize(edge)
		@edge = edge
	end

	def calculate
		(@edge * 4)
	end
end

def CircleArea < Area
	def initialize(radius)
		@radius = radius
	end

	def calculate
		(@radius * @radius * 2)
	end
end
