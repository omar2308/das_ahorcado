Feature: Jugar una letra

    Esta aplicacion muestra la bienvenida al Juego

    Scenario: Jugamos una letra correcta
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "A"
    And le doy clic en "Adivinar"
    Then me muestra "Correcto"