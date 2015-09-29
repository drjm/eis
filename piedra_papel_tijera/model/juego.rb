require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/jugador'


class Juego 
	def jugarRonda(jugador1, jugador2)
		jugadaJugador1 = jugador1.getJugadas(0)
		jugadaJugador2 = jugador2.getJugadas(0)
		imprimirResultado( jugadaJugador1.pierdoCon(jugadaJugador2) ) 
	end

	def imprimirResultado(res)
		case 
		when (res)
			return "jugador2 gana"
		when (false == res)
			return "jugador1 gana"
		when (nil == res)
			return "empate"
		end
	end

end