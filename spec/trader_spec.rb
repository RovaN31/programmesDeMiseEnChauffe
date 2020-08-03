require_relative '../lib/trader'

describe 'day_trader' do 
	it 'tells me la meilleur jour a la revente'do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(17)
	end
	it 'tells me la meilleur jour a lachat'do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(1)
	end
	it 'tells me la postion de la meilleur jour a la revente'do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(0)
	end
	it 'tells me la position de la meilleur jour a lachat'do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq(7)
	end
end
