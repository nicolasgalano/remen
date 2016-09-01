require 'sinatra'

get '/' do
	@secuencia = 1
	@resultado = "Ganaste"
    erb :tablero
end
