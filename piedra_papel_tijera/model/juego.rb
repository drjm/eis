require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/jugador'

class Juego 
	def jugarRonda(jugador1, jugador2)
		jugadaJugador1 = jugador1.getJugadas(0)
		jugadaJugador2 = jugador2.getJugadas(0)
		if( jugadaJugador1.pierdoCon(jugadaJugador2) )
			return "jugador2 gana"
		end
	end

end