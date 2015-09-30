require_relative '../model/piedra'
require_relative '../model/papel'

class Jugador
	def initialize()  
    	# atributos   
    	@jugadas = Array.new
  	end

  	def jugarPiedra
  		piedra = Piedra.new
  		@jugadas[0]=piedra
  	end

 	def jugarPapel
 		  papel = Papel.new
      @jugadas[0]=papel
  	end

  def agregarJugada(jugada)
    (@jugadas).push( jugada )
    #fijate como hacer append en el array!
  end

  	def getJugada(n)
  		return @jugadas[n]
  	end

end