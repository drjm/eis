class Tablero

  def initialize()
    @tablero = Hash.new
    for x in 0..4
      for y in 0..4
        @tablero[[x,y]] = "libre"
      end
    end
  end

  def get_tablero()
  	return @tablero
  end

  def get_pos(x, y)
    return @tablero[[x,y]]
  end

  def ocupar_celda(x,y)
    @tablero[[x,y]] = "ocupado"
  end 

  def celda_vacia(x, y)
    ret @tablero[[x,y]] == libre
  end
end