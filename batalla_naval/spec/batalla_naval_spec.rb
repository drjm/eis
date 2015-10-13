require 'rspec' 
require_relative '../model/batalla_naval'

describe 'Batalla_naval' do
  let(:batalla_naval) { Batalla_naval.new }	
 	 

it 'deberia poner destructor en pos 1,1' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "destructor", "vertical")
  expect(batalla.get_tablero[[1,0]]).to eq "libre"
  expect(batalla.get_tablero[[1,1]]).to eq "ocupado"
  expect(batalla.get_tablero[[1,2]]).to eq "ocupado"
  expect(batalla.get_tablero[[1,3]]).to eq "ocupado"
  expect(batalla.get_tablero[[1,4]]).to eq "libre"
end


it 'deberia poner destructor en pos 1,1' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "destructor", "horizontal")
  expect(batalla.get_tablero[[0,1]]).to eq "libre"
  expect(batalla.get_tablero[[1,1]]).to eq "ocupado"
  expect(batalla.get_tablero[[2,1]]).to eq "ocupado"
  expect(batalla.get_tablero[[3,1]]).to eq "ocupado"
  expect(batalla.get_tablero[[4,1]]).to eq "libre"
end

it 'deberia poner submarino en pos 1,1' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "submarino", "horizontal")
  expect(batalla.get_tablero[[0,1]]).to eq "libre"
  expect(batalla.get_tablero[[1,1]]).to eq "ocupado"
  expect(batalla.get_tablero[[2,1]]).to eq "libre"
  expect(batalla.get_tablero[[3,1]]).to eq "libre"
  expect(batalla.get_tablero[[4,1]]).to eq "libre"
end

it 'deberia poner destructor en pos 0,4' do
  batalla = Batalla_naval.new
  batalla.poner_barco(0, 4, "submarino", "horizontal")
  expect(batalla.get_tablero[[0,0]]).to eq "libre"
  expect(batalla.get_tablero[[0,1]]).to eq "libre"
  expect(batalla.get_tablero[[0,2]]).to eq "libre"
  expect(batalla.get_tablero[[0,3]]).to eq "libre"
  expect(batalla.get_tablero[[0,4]]).to eq "ocupado"
end

it 'No se puede ubicar un barco en una posición ya ocupada' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "destructor", "vertical")
  expect{batalla.poner_barco(1, 1, "destructor", "vertical")}.to raise_error('posición ya ocupada')
end

it 'No puedo ubicar mi barco en una posición fuera del tablero' do
  batalla = Batalla_naval.new
  expect{batalla.poner_barco(6, 6, "destructor", "horizontal")}.to raise_error('posicion fuera del tablero')
end


it 'disparo y toco agua' do
  batalla = Batalla_naval.new
  expect(batalla.disparar(1,1)).to eq "agua"
end
=begin
it 'disparo y toco un barco pero no lo hundo' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "destructor", "horizontal")
  expect{batalla.disparar(1,1)}.to eq "acierto"
end

it 'disparo y hundo un barco' do
  batalla = Batalla_naval.new
  batalla.poner_barco(1, 1, "submarino", "horizontal")
  expect{batalla.disparar(1,1)}.to eq "hundido"
end
=end
end


