require 'board'
require 'ship'

class Player

	attr_reader :name
	attr_accessor :board, :fleet

	def initialize(name)
		@name = name
		@board = Board.new
		create_fleet
	end

	def create_fleet
		aircraft = Ship.new(5)
		battleship = Ship.new(4)
		sub = Ship.new(3)
		destroyer = Ship.new(2)
		patrol = Ship.new(1)
		@fleet = []
		# @fleet.push(aircraft)
		# @fleet.push(battleship)
		# @fleet.push(sub)
		# @fleet.push(destroyer)
		# @fleet.push(patrol)
		# @fleet
	end

	# def create_fleet
	# 	fleet = []
	# 	fleet.push
		
	# end


end