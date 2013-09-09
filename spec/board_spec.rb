require 'board'

describe 'Board' do
	let(:board) {Board.new}
	it 'displays itself as instance of array' do
		board = Board.new
		
		expect(board.display_my_board).to be_an_instance_of Array
	end

	it 'board should contain 10 rows with 10 elements' do
		expect(board.create_new_board).to match_array(Array.new(10) {Array.new(10)})
	end
	
	it 'contains my board' do
		expect(board.display_my_board).to be_an_instance_of Array
	end

	it 'has a representation of my opponents board' do
		expect(board.opponent_view).to be_an_instance_of Array
	end
	
	it 'my board is not the same as my opponents board' do
		expect(board.display_my_board).not_to eq board.opponent_view
	end
end