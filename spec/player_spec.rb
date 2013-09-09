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

	it 'chooses starting coordinate' do
		ship = double :ship
		player.start_position.should be_a Array
	end

	it 'find consecutive vertical coordinates for ship using start' do
		start = [1,2]
		expect(player.vertical_coords(ship,start[0])).to
	end
end