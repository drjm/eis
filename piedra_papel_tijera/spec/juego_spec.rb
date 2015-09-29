require 'rspec' 
require_relative '../model/juego'
require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/jugador'


describe 'juego' do

	let(:juego) { Juego.new}  



	it '
		test 1: 
		jugador1 juega piedra
		jugador2 juega papel
		entonces la ronda la gana jugador2' do
		jugador1 = Jugador.new
		jugador2 = Jugador.new
		jugador1.jugarPiedra()
		jugador2.jugarPapel()
		expect(juego.jugarRonda(jugador1, jugador2)).to eq 'jugador2 gana'
	end



	it '
		test 1: 
		jugador1 juega piedra
		jugador2 juega papel
		entonces la ronda la gana jugador2' do
		jugador1 = Jugador.new
		jugador2 = Jugador.new
		jugador1.jugarPapel()
		jugador2.jugarPiedra()
		expect(juego.jugarRonda(jugador1, jugador2)).to eq 'jugador1 gana'
	end

=begin

	it '
		test 1: 
		jugador1 juega piedra
		jugador2 juega piedra
		entonces la ronda la gana jugador2' do
		jugador1 = Jugador.new
		jugador2 = Jugador.new
		jugador1.jugarPiedra()
		jugador2.jugarPiedra()
		expect(juego.jugarRonda(jugador1, jugador2)).to eq 'empate'
	end


	it '
		test 2: 
		jugador1 gana la primera ronda
		jugador2 gana la segunda ronda
		entonces hasta el momento no hay ganador de la partida
		jugador2 gana la tercera ronda
		entonces la partida la gana jugador2' do
		piedra = Piedra.new
		papel = Papel.new
		jugador1 = Jugador.new
		jugador1.jugarPiedra(piedra)
		jugador1.jugarPiedra(papel)
		jugador1.jugarPiedra(papel)
		jugador2 = Jugador.new
		jugador2.jugarPiedra(Papel)
		jugador2.jugarPapel(piedra)
		jugador2.jugarPapel(piedra)
		expect(juego.jugarPartida(jugador1, jugador2)).to eq 'jugador2 gana'
	end
=end
end
