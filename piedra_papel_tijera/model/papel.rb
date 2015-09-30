require_relative '../model/rol'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/mono'

class Papel < Rol
  def pierdoConPiedra
  	return true
  end
 
  def pierdoConPapel
  	return nil
  end

  def pierdoConMono
  	return false
  end

  def pierdoConTijera
  	return false
  end

  def pierdoCon(rol)
  	return rol.pierdoConPapel
  end
end