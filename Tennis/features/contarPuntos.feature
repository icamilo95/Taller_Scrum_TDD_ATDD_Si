Feature:
como arbitro de tenis
quiero poder contar puntos
para determinar quien gana un game


Scenario: ver puntaje inicial
Given que inicie una partida
Then debo ver "0-0"

Scenario: marcar un punto para el j1
  Given que inicie una partida
  When el "j1" marca punto
  Then debo ver "15-0"

  Scenario: marcar dos punto para el j1
    Given que inicie una partida
    When el "j1" marca punto
    And el "j1" marca punto
    Then debo ver "30-0"
