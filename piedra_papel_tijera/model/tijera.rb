require_relative '../model/rol'
require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/mono'

class Tijera < Rol
  def pierdoConPiedra
    return false
  end
 
  def pierdoConPapel
    return true
  end

  def pierdoConMono
    return nil
  end

  def pierdoConTijera
    return nil
  end

  def pierdoCon(rol)
    return rol.pierdoConTijera
  end
end