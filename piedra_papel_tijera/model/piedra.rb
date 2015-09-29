require_relative '../model/rol'
require_relative '../model/papel'

class Piedra < Rol
  def pierdoConPiedra
  	return nil
  end
 
  def pierdoConPapel
  	return false
  end

  def pierdoCon(rol)
  	return rol.pierdoConPiedra
  end
end