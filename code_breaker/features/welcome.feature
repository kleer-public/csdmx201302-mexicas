Feature: Welcome
	Scenario: "Bienvenida al iniciar el juego"
		Given I start a new game
		Then I should see "Bienvenido al codebreaker!"	
