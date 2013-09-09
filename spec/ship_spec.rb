require './lib/ship.rb'


describe Ship do
	
	let(:ship) {Ship.new(5)}


	it 'knows its size' do
		expect(ship.size).to eq 5
	end

	context 'knows if it is ' do
		it 'floating' do
			ship.coordinates = {'a1'=>'x', 'a2'=>'s'}
			expect(ship.floating?).to eq(true)
		end

		it 'sunk' do
			ship.coordinates = {'a1'=>'x', 'a2'=>'x'}
			expect(ship.sunk?).to eq(true)
		end
	end

	it 'knows how many hits it has taken' do
		ship.coordinates = {'a1'=>'x', 'a2'=>'x', 'a3' => 's'}
		expect(ship.num_of_hits).to eq 2
	end


end