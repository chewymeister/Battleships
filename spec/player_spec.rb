require 'player'

describe Player do

	let(:player) {Player.new('Jay')}
	let(:aircraft) {Ship.new(5)}
	let(:battleship) {Ship.new(4)}
	let(:sub) {Ship.new(3)}
	let(:destroyer) {Ship.new(2)}
	let(:patrol) {Ship.new(1)}

	# let(:fleet)

	it 'knows its name' do
		expect(player.name).to eq 'Jay'
	end

	context 'creates a' do
		it 'board' do
			player.board.should be_a Board
		end

		it 'fleet of ships' do
			player.fleet.should be_a Array
		end
	end

	it 'chooses starting coordinates' do
		ship = double :ship
		player.start_position.should be_a Array
	end

	it 'finds consecutive vertical coordinates for ship using start' do
		start_y = 3
		ship_size = 4
		expect(player.vertical_coords(ship_size,start_y)).to be [[3,4,5,6],[6,5,4,3]]
	end

	it 'finds consecutive horizontal coordinates' do
		start_x = 'c'
		ship_size = 4
		expect(player.horizontal_coords(ship_size,start_x)).to be [['c','d','e','f'],['f','e','d','c']]
	end



end