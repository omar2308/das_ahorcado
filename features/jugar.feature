Feature: Jugar una letra

    Esta aplicacion muestra la bienvenida al Juego

    Scenario: Jugamos una letra correcta, siendo A por adivinar
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "A"
    And le doy clic en "Adivinar"
    Then me muestra "Correcto"

    Scenario: Jugamos una letra incorrecta, siendo A por adivinar
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "B"
    And le doy clic en "Adivinar"
    Then me muestra "Incorrecto"

    Scenario: Jugamos palabra de una letra y adivinamos
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "A"
    And le doy clic en "Adivinar"
    Then mensaje final es "Juego Terminado, Ganaste!"

    Scenario: Jugamos palabra de una letra, 2do intento adivinamos
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "B"
    And le doy clic en "Adivinar"
    When ingreso la letra "A"
    And le doy clic en "Adivinar"
    Then mensaje final es "Juego Terminado, Ganaste!"

    Scenario: Jugamos palabra de una letra, 3 intentos, fallamos
    Given inicio la aplicacion
    And inicio del juego
    And por adivinar "A"
    When ingreso la letra "B"
    And le doy clic en "Adivinar"
    When ingreso la letra "C"
    And le doy clic en "Adivinar"
    When ingreso la letra "D"
    And le doy clic en "Adivinar"
    Then mensaje final es "Juego Terminado, Fallaste!"