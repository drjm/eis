require 'rspec' 
require_relative '../model/batalla_naval'

describe 'Batalla_naval' do
  let(:batalla_naval) { Batalla_naval.new }	
   	
    it 'deberia poner crucero en pos 1,1' do
	  batalla = Batalla_naval.new
	  batalla.poner_barco(1, 1, "destructor", "horizontal")
	  expect(batalla.get_tablero[[1,1]]).to eq "ocupado"
	  expect(batalla.get_tablero[[1,2]]).to eq "ocupado"
	  expect(batalla.get_tablero[[1,3]]).to eq "ocupado"
    end
end
