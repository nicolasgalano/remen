require_relative '../lib/simon.rb'

describe "simon" do

	it "deberia mostrar una secuencia de 3 numeros" do
		simon = Simon.new [1, 2, 1]
		simon.cantidad_secuencia.should == 3
	end

	it "deberia recibir un input del usuario y agregarla a una lista de inputs" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 2
		simon.secuencia_recibida.count.should == 2
	end

	# tener en cuenta posicion
	it "termino de recibir" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 2
		simon.recibir 1
		simon.secuencia_recibida.count.should == 3
		#simon.ya_termine.should == true
	end

	it "deberia secuencia recibida incorrecta" do
		simon = Simon.new 2
		simon.recibir 3
		simon.validar.should == false
	end

	it "deberia no validar si no se recibio input" do
		simon = Simon.new [1, 2, 1]
		expect { simon.validar }.to raise_error
	end

	# cuando gana, agrega otro valor
	# lleva bien la cuenta de la cantidad de aciertos (no secuencial, global)
	# cuando pierde, resetea
end

