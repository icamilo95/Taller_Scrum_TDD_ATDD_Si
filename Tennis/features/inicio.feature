Feature:
  como arbitro de tennis
  quiero iniciar una partida
  para poder inicar un partido
Scenario: Debo poder ver una pantalla de bienvenida
  Given que abri la aplicacion
  Then  debo ver "Bienvenido al juego de tennis"

Scenario: debo poder indicar los nombres de los jugadores
  Given que abri la aplicacion
  When indico que el "jugador1" es "Nadal"
  And indico que el "jugador2" es "Federer"
  And inicio un juego
  Then debo ver "Nadal vs Federer"

  Scenario: debo poder indicar los nombres de los jugadores
    Given que abri la aplicacion
    When indico que el "jugador1" es "Federer"
    And indico que el "jugador2" es "Del potro"
    And inicio un juego
    Then debo ver "Federer vs Del potro"
