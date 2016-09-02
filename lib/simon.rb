class Simon

	def initialize src
		if src.class == Array
			@secuencia = src
		else
			@secuencia = src.times.map{ Random.rand(2)+1 }
		end
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

