Feature: Simon

Scenario: Mostrar una secuencia
	Given voy al sitio
	Then veo "Secuencia: 1,2,1"

Scenario: Hago un click y no pasa nada
	Given voy al sitio
	When Hago un click
	Then veo "Segui"

Scenario: Hago tres clicks y termina el juego
	Given voy al sitio
	When Hago tres click
	Then veo "Terminado"


