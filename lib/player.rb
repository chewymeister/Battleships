require 'board'
require 'ship'

class Player

	attr_reader :name
	attr_accessor :board, :fleet
	

	def initialize(name)
		@name = name
		@board = Board.new
		create_fleet
	#	position_fleet
	end

	def create_fleet
		aircraft = Ship.new(5)
		battleship = Ship.new(4)
		sub = Ship.new(3)
		destroyer = Ship.new(2)
		patrol = Ship.new(1)
		@fleet = []
		@fleet.push(aircraft)
		@fleet.push(battleship)
		@fleet.push(sub)
		@fleet.push(destroyer)
		@fleet.push(patrol)
		@fleet
	end

	def start_position
		x_axis = %w(a b c d e f g h i j)
		y_axis = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
		x = x_axis.sample
		y = y_axis.sample
		start = [x,y]
	end

	def vertical_coords(ship,start_y)
		poss_vert_coords = []
		x=(ship.size-2)
		forward_coords = (start_y..x).to_a
		backward_coords = (start_y..x).to_a.reverse
		poss_vert_coords.push(forward_coords)
		poss_vert_coords.push(backward_coords)
		poss_vert_coords
	end

	def horizontal_coords(ship,start_x)
		poss_horiz_coords = []
		forward_coords = (start_x..(ship.size-2)).to_a
		backward_coords = (start_x..(ship.size-2)).to_a.reverse
		poss_horiz_coords.push(forward_coords)
		poss_horiz_coords.push(backward_coords)
		poss_horiz_coords
	end


end