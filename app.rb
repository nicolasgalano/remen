require 'sinatra'
require_relative './lib/simon.rb'

get '/' do
	@@simon = Simon.new [1,2,1]
	@@secuencia = @@simon.secuencia.join ","
	@resultado = ""
	#@@contador = 0
    erb :tablero
end

post '/click' do
	#@@contador += 1
	
	@@simon.recibir params["valor"].to_i

	if @@simon.cantidad_intentos < 3
		@resultado = "Segui"
	else
		if @@simon.validar
			@resultado = "Ganaste"
		else
			@resultado = "Perdiste"
		end	
	end
    erb :tablero
end
