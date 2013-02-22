Feature: Coordenadas
  Scenario: "Verificar la captura de coordenadas"
  Given I see the soup and the fields to fill
  When I fill in the fields
  Then I should see four numbers between 1 and 10 each of them 
