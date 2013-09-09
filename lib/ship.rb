class Ship

	attr_reader :size 
	attr_accessor :coordinates

	# def coordinates
	#   @coordinates
	# end
	# def coordinates=(value)
	# 	@coordinates = value
	# end

	COORDINATE_STATUS = %W(x s o)

	def initialize(size)
		@size = size
		@coordinates = {}
	end

	def floating?
		!sunk?
	end

	def sunk?
		@coordinates.values.uniq.to_s == 'x'	 
	end

	def num_of_hits
		hits = @coordinates.select {|k,v| v == 'x'}
		hits.uniq.size
	end

	



	# def place_on_board
	# 	#talk to board, to position ship
	# end

	# def positions_ship(size)
	# 	@coordinates = call board with size
	# 	talk to the board and get a available coordinates

	# 	 = coordinates.each {|coordinate| 's'}
	# end


end