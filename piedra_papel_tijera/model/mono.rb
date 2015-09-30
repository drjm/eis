require_relative '../model/rol'
require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/tijera'

class Mono < Rol
  def pierdoConPiedra
    return nil
  end
 
  def pierdoConPapel
    return true
  end

  def pierdoConMono
    return nil
  end

  def pierdoConTijera
  end

  def pierdoCon(rol)
    return rol.pierdoConMono
  end
end