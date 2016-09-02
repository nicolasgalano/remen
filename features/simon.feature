Feature: Simon

Scenario: Mostrar una secuencia
	Given voy al sitio
	Then veo "Secuencia: 1,2,1"

Scenario: Hago un click y no pasa nada
	Given voy al sitio
	When click 1
	Then veo "Segui"

Scenario: Hago tres clicks y termina el juego y compara las secuencias
	Given voy al sitio
	When click 1
	And click 2
	And click 1
	Then veo "Ganaste"

Scenario: Voy, Apreto mi turno, Oculta Secuencia
	Given voy al sitio
	When apreto "Turno"
	Then no veo "Secuencia"





