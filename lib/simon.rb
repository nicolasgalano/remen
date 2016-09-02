class Simon

	def initialize lista
		@secuencia = lista
		@secuencia_recibida = Array.new
	end

	def secuencia
		@secuencia
	end

	def cantidad_secuencia
		@secuencia.count
	end

	def recibir number
		@secuencia_recibida.push number
	end

	def cantidad_intentos
		@secuencia_recibida.count
	end

	def secuencia_recibida
		@secuencia_recibida
	end

	def validar
		throw Exception.new "Secuencia no recibida" if @secuencia_recibida.count == 0
		@secuencia.slice(0, @secuencia_recibida.count) == @secuencia_recibida
	end
end

