Feature: Win

Scenario Outline: "Jugando con varios numeros"
	Given I start a new game
	And the secret code is <secret_code>
	When I try with <guess_code>
	Then I should see <message> 
	Scenarios:
		|secret_code|guess_code|message|
		|"1234"|"1234"|"Ganaste!"|
		|"1234"|"1235"|"Intenta nuevamente!"|

Scenario: "No ganar el juego con el codigo 1234 y arriesgando con 1235"
	Given I start a new game
	And the secret code is "1234"
	When I try with "1235"
	Then I should not see "Ganaste!" 
	And I should see "Intenta nuevamente!"

Scenario: "Obtener XX cuando el codigo secreto es 1234 y arriesgo con 1256"
	Given I start a new game
	And the secret code is "1234"
	When I try with "1256"
	Then I should see "XX" 

Scenario: "Obtener mensaje digitos duplicados cuando el codigo secreto es 2256"
	Given I start a new game
	And the secret code is "1234"
	When I try with "2256"
	Then I should see "No puedes ingresar digitos duplicados" 



