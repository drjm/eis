Feature: Como usuario quiero ubicar mis barcos

  @wip
  Scenario: Ubico mi barco exitosamente
    Given la posicion a3 esta vacia
    When ubico un submarino en forma horizontal
    Then posiciono el barco en el tablero

  @wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given en la posicion a3 esta ocupada
    When intento ubicar un barco en esa posicion
    Then posicion ocupada no se puede ubicar el barco

  @wip
  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given en la posicion g6 esta fuera del tablero
    When intento posicionar una barco en esa posicion
    Then fallo al ubicar el barco, desborde en ubicacion del barco

