require 'board'
require 'ship'

class Player

	attr_reader :name
	attr_accessor :board, :fleet
	x_axis = %w(a b c d e f g h i j)
	y_axis = [1 2 3 4 5 6 7 8 9 10]

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
		x = x_axis.sample
		y = y_axis.sample
		start = [x,y]
	end

	def vertical_coords(ship,start_y)
		vertical_coords = y_axis.each_cons(start_y(ship.size)
	end


end