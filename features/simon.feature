Feature: Simon

Scenario: Mostrar Un Numero
	Given voy al sitio
	Then veo "Secuencia"

Scenario: Secuencia valida
	Given voy al sitio
	And secuencia es 1
	When click 1
	Then veo "Ganaste"

Scenario: Secuencia no valida
	Given voy al sitio
	And secuencia es 1
	When click 2
	Then veo "Perdiste"
