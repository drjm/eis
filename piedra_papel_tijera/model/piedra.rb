require_relative '../model/rol'
require_relative '../model/papel'
require_relative '../model/tijera'
require_relative '../model/mono'

class Piedra < Rol
  def pierdoConPiedra
  	return nil
  end
 
  def pierdoConPapel
  	return false
  end

  def pierdoConMono
  	nil
  end

  def pierdoConTijera
  	return true
  end

  def pierdoCon(rol)
  	return rol.pierdoConPiedra
  end
end