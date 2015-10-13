require_relative '../model/tablero'

class Batalla_naval

  def initialize()
    @tablero = Tablero.new
  end

  def get_tablero()
  	return @tablero.get_tablero
  end

  def poner_barco(posX, posY, tipo_b, dir)
    if puedo_ubicar_barco(posX, posY, tipo_b, dir)
      if dir == "vertical" 
  	    poner_barco_vertical(posX, posY, tipo_b)
      else 
        poner_barco_horizontal(posX, posY, tipo_b)
      end
    else
      raise 'posición ya ocupada'
    end
  end

  def poner_barco_horizontal(posX, posY, tipo_b)
    tamanio = tamanio_barco(tipo_b)
      for i in 0..4
      #tengo que iterar eficientemente
      if (posX <= i) and ( i < posX+tamanio)
         @tablero.ocupar_celda(i, posY)
      end
      #horrible mejorar!!
    end
  end

  def poner_barco_vertical(posX, posY, tipo_b)
    tamanio = tamanio_barco(tipo_b)
    for i in 0..4
      #tengo que iterar eficientemente
      if (posY <= i) and ( i < posY+tamanio)
        @tablero.ocupar_celda(posX, i)
      end
         #horrible mejorar!!
    end
  end

#por ahora si digo horizontal es para arriba y vertical para la derecha
  def puedo_ubicar_barco(posX, posY, tipo_b, dir)
    flag_h = true
      if(dir == "horizontal")
        tamanio = tamanio_barco(tipo_b)
        #delegar en otro metodo
        if (posX+tamanio) > 4
          raise "posicion fuera del tablero"
        end 
        flag_h = puedo_poner_horizontal(posX, posY, tipo_b)
      else
        tamanio = tamanio_barco(tipo_b)
        #delegar en otro metodo
        if (posY+tamanio) > 4
          raise "posicion fuera del tablero"
        end 
        flag_h = puedo_poner_vertical(posX, posY, tipo_b)
      end 
    return flag_h
  end

  def puedo_poner_horizontal(posX, posY, tipo_b)
    tamanio = tamanio_barco(tipo_b)
    for i in posX..4
     #tengo que iterar eficientemente
      if (posX <= i) and (i < posX+tamanio)
        f = @tablero.get_pos(i, posY) 
          if f == "ocupado"
           return false
          end
     #horrible mejorar!!
      end
    end
  end

  def puedo_poner_vertical(posX, posY, tipo_b)
    tamanio = tamanio_barco(tipo_b)
    for i in posY..4
      #tengo que iterar eficientemente
      if (posY<=i) and ( i <posY+tamanio)
        f = @tablero.get_pos(posX, i) 
          if f == "ocupado"
              return false
          end
         #horrible mejorar!!
      end
    end
  end
#tengo que ver como hacer un enum algo estatico no es necesario un case
  def tamanio_barco(tipo_barco)
    case 
      when tipo_barco == "submarino"
        return 1
      when tipo_barco == "crucero"
        return 2
      when tipo_barco == "destructor"
        return 3
    end
  end
end