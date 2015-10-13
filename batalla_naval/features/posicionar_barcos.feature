Feature: Como usuario quiero ubicar mis barcos
  
  Scenario: Ubico mi barco exitosamente
    Given la posicion 0 0 esta vacia
    When ubico un crucero en forma horizontal
    Then posiciono el barco en el tablero

  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given en la posicion 0 0 esta ocupada
    When intento ubicar un barco en esa posicion
    Then posicion ocupada no se puede ubicar el barco

  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given en la posicion g6 esta fuera del tablero
    When intento posicionar una barco en esa posicion
    Then fallo al ubicar el barco, desborde en ubicacion del barco

