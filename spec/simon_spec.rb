require_relative '../lib/simon.rb'

describe "simon" do

	it "deberia mostrar un numero fijo" do
		simon = Simon.new 2
		simon.secuencia.should == 2
	end

	it "deberia recibir una opcion" do
		simon = Simon.new 2
		simon.recibir 2
		simon.secuencia_recibida.should == 2
	end

	it "deberia secuencia recibida correcta" do
		simon = Simon.new 2
		simon.recibir 2
		simon.validar.should == true
	end

	it "deberia secuencia recibida incorrecta" do
		simon = Simon.new 2
		simon.recibir 3
		simon.validar.should == false
	end

	it "deberia no validar si no se recibio input" do
		simon = Simon.new 2
		expect { simon.validar }.to raise_error
	end


end

