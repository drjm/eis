require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/jugador'


class Juego 
	def jugarRonda(jugador1, jugador2)
		jugadaJugador1 = jugador1.getJugada(0)
		jugadaJugador2 = jugador2.getJugada(0)
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

	def jugarPartida(j1, j2)
		n = 0
		resultado = 0
		while n < 3  do
   			jugadaJugador1 = j1.getJugada(n)
			jugadaJugador2 = j2.getJugada(n)
			if jugadaJugador1.pierdoCon(jugadaJugador2) != nil
				if jugadaJugador1.pierdoCon(jugadaJugador2) 
					resultado += 1
				else
					resultado -= 1
				end
			end
 			n +=1
		end
		puts "resultado"
		puts resultado
		imprimirResultadoPartida(resultado)
	end 

	def imprimirResultadoPartida(res)
		case 
		when (res > 0)
			return "jugador2 gana"
		when (res < 0)
			return "jugador1 gana"
		when (0 == res)
			return "empate"
		end
	end

end
