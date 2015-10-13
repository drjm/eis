require 'rspec' 
require_relative '../model/batalla_naval'

describe 'Batalla_naval' do
  let(:batalla_naval) { Batalla_naval.new }	
   	
  it 'deberia poner destructor en pos 1,1' do
  	batalla = Batalla_naval.new
	batalla.poner_barco(1, 1, "destructor", "horizontal")
	expect(batalla.get_tablero[[1,1]]).to eq "ocupado"
	expect(batalla.get_tablero[[1,2]]).to eq "ocupado"
	expect(batalla.get_tablero[[1,3]]).to eq "ocupado"
  end

=begin
  it 'No se puede ubicar un barco en una posición ya ocupada' do
    batalla = Batalla_naval.new
	batalla.poner_barco(1, 1, "destructor", "horizontal")
	expect{batalla.poner_barco(1, 1, "destructor", "horizontal")}.to raise_error('posición ya ocupada')
  end

  it 'No puedo ubicar mi barco en una posición fuera del tablero' do
    batalla = Batalla_naval.new
	batalla.poner_barco(6, 6, "destructor", "horizontal")
	expect{batalla.poner_barco(6, 6, "destructor", "horizontal")}.to raise_error('posicion fuera del tablero')
  end
=end
end


