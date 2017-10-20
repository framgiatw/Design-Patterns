# Strategy design pattern
# https://cacoo.com/diagrams/SYmlKFaYO7TY5ZiV
class TransportAlgorithm
	def tranfer ;end
end

def TransportationToAirportByTaxi
	def initialize(TransportAlgorithm transport_algorithm)
	 	@transport_algorithm = transport_algorithm
	end

	def tranfer()
		@transport_algorithm.tranfer()
	end
end

def TransportToAirportByBus < TransportAlgorithm
	def tranfer
		# something code
	end
end

class TransportationToAirport < TransportAlgorithm
	def tranfer
		# something code
	end
end