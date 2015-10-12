class Batalla_naval

  def initialize()
    @tablero = Hash.new
    for x in 1..4
      for y in 1..4
        @tablero[[x,y]] = "libre"
      end
    end
  end

  def get_tablero()
  	return @tablero
  end

  def poner_barco(posX, posY, tipo, dir)
    if tipo == "destructor" and dir == "horizontal"
  	  @tablero[[1,1]] = "ocupado"
  	  @tablero[[1,2]] = "ocupado"
      @tablero[[1,3]] = "ocupado"
    end
  end
end