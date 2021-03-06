Feature: Simon

Scenario: Mostrar una secuencia
	Given voy al sitio
	Then veo "Secuencia: 1,2,1"

Scenario: Hago un click y no pasa nada
	Given voy a "Turno"
	When click 1
	Then veo "Siga"

Scenario: Hago tres clicks y termina el juego y compara las secuencias
	Given voy a "Turno"
	When click 1
	And click 2
	And click 1
	Then veo "Ganaste"

Scenario: Voy, Apreto mi turno, Oculta Secuencia
	Given voy al sitio
	When apreto "Turno"
	Then no veo "Secuencia"

Scenario: Voy, Apreto mi turno, Muestra Botones
	Given voy al sitio
	When apreto "Turno"
	And click 1
	Then veo "Siga"

Scenario: Voy, Ingreso Primer Numero Incorrecto, Falla
	Given voy a "Turno"
	When click 2
	Then veo "Perdiste"

Scenario: Voy, Ingreso Segundo Numero Incorrecto, Falla
	Given voy a "Turno"
	When click 1
	And click 1
	Then veo "Perdiste"

Scenario: Ingreso un numero y me dice siga
	Given voy a "Turno"
	When click 1
	And click 2
	Then veo "Siga Siga" 

Scenario: Gano, clickeo next level, vuelvo a secuencia incrementada
	Given Gano
	When apreto "Next" y el siguiente valor es 2
	Then veo "Secuencia: 1,2,1,2" 

Scenario: Si no gano, no me muestra next
	Given No gane todavia
	Then no veo "Next"

Scenario: Puedo resetear el juego
	Given voy a "Turno"
	When apreto "Reset"
	Then vuelvo a una cadena de 1

Scenario: Gano, clickeo 3 veces y deberia seguir
	Given Gano
	When apreto "Next" y el siguiente valor es 2
	And click Turno
	And click 1
	And click 2
	And click 1
	Then veo "Siga Siga Siga" 

