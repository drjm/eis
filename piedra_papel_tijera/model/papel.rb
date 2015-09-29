require_relative '../model/rol'
require_relative '../model/piedra'

class Papel < Rol
  def pierdoConPiedra
  	return true
  end
 
  def pierdoConPapel
  	return nil
  end

  def pierdoCon(rol)
  	rol.pierdoConPapel
  end
end