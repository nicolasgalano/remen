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

	it "deberia validar secuencia correcta" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 2
		simon.recibir 1
		simon.validar.should == true
	end

	it "deberia rechazar secuencia incorrecta" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 1
		simon.recibir 2
		simon.validar.should == false
	end

	it "deberia rechazar secuencia incompleta" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 1
		simon.validar.should == false
	end

	it "deberia no validar si no se recibio input" do
		simon = Simon.new [1, 2, 1]
		expect { simon.validar }.to raise_error
	end

	it "deberia rechazar primer valor incorrecto" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 2
		simon.validar.should == false # [1, 2, 1] == [2]
	end

	it "deberia rechazar segundo valor incorrecto" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 1
		simon.validar.should == false
	end

	it "deberia rechazar tercer valor incorrecto" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.recibir 2
		simon.recibir 2
		simon.validar.should == false
	end

	it "deberia permitir primer valor correcto" do
		simon = Simon.new [1, 2, 1]
		simon.recibir 1
		simon.validar.should == true # [1, 2, 1] == [1]
	end

	# cuando gana, agrega otro valor
	# lleva bien la cuenta de la cantidad de aciertos (no secuencial, global)
	# cuando pierde, resetea
end

