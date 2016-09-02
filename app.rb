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

	if @@simon.cantidad_intentos == 3
		@resultado = "Ganaste"
	else
		@resultado = "Segui"
	end
    erb :tablero
end
