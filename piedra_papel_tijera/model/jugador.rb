require_relative '../model/piedra'
require_relative '../model/papel'

class Jugador
	def initialize()  
    	# atributos   
    	@jugadas = []  
  	end

  	def jugarPiedra
  		piedra = Piedra.new
  		@jugadas[0]=piedra
  	end

 	def jugarPapel
 		papel = Papel.new
  		@jugadas[0]=papel
  	end

  	def getJugadas(n)
  		return @jugadas[n]
  	end
end