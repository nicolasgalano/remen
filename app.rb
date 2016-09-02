require 'sinatra'
require_relative './lib/simon.rb'

get '/' do
	@@simon = Simon.new [1,2,1]
	@@secuencia = @@simon.secuencia.join ","
	@resultado = ""
    erb :tablero
end

post '/click' do
	@@simon.recibir params["valor"].to_i
	if @@simon.validar
		@resultado = "Ganaste"
	else
		@resultado = "Perdiste"
	end
    erb :tablero
end
