class Tablero

  def initialize()
    @tablero = Hash.new
    @n = 0
    for x in 0..4
      for y in 0..4
        @tablero[[x,y]] = "libre"
      end
    end
  end

# recorro toda la matriz para verificar que no este mas el id del barco
  def barco_hundido(id_barco)
    ret = true
    for x in 0..4
      for y in 0..4
        if @tablero[[x,y]] == id_barco
          ret = false
        end
      end
    end
    if ret
      return "hundido"
    else
      return "acierto"
    end
  end

  def get_tablero()
  	return @tablero
  end

  def get_pos(x, y)
    return @tablero[[x,y]]
  end

  def ocupar_celda(x,y, contador)
    @tablero[[x,y]] = contador
  end

  def celda_vacia(x, y)
    ret @tablero[[x,y]] == libre
  end
end