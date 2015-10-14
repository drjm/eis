Feature: Como usuario quiero disparar a los barcos enemigos


  Scenario: Disparo y toco agua
    Given un tablero vacio
    When  Disparo a la coordenada 0 0
    Then  disparo al agua

  Scenario: Disparo a un barco pero no lo hundo
    Given un barco ubicado en la posicion 0 0
    When  Disparo a la coordenad 0 0
    Then  acierto al barco pero no lo hundo

  Scenario: Disparo, toco un barco y lo hundo
    Given un barco ubicado en las coordenadas 0 0
    When  Disparo a la coordena 0 0
    Then  acierto al barco y es hundido