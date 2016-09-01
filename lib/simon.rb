class Simon

	def initialize number
		@secuencia = number
	end

	def secuencia
		@secuencia
	end

	def recibir number
		@secuencia_recibida = number
	end

	def secuencia_recibida
		@secuencia_recibida
	end

	def validar
		throw Exception.new "Secuencia no recibida" if @secuencia_recibida.nil?
		@secuencia == @secuencia_recibida
	end
end

