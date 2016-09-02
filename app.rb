require 'sinatra'
require_relative './lib/simon.rb'

@@simon = Simon.new 3

get '/' do
	@@secuencia = @@simon.secuencia.join ","
	#@@contador = 0
    erb :tablero
end

post '/click' do
	#@@contador += 1
	@resultado = ""
	@@simon.recibir params["valor"].to_i

	if @@simon.cantidad_intentos < 3
		if @@simon.validar
			@resultado = "Siga " * @@simon.cantidad_intentos
		else
			@resultado = "Perdiste"
		end	
	else
		if @@simon.validar
			@resultado = "Ganaste"
		else
			@resultado = "Perdiste"
		end	
	end
    erb :turno_jugador
end

get '/turno' do
	@resultado = ""
    erb :turno_jugador
end

get '/next' do
	@@simon.prox_nivel
	@@secuencia = @@simon.secuencia.join ','
	erb :tablero
end
