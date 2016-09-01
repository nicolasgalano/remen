require_relative '../lib/simon.rb'

describe "simon" do

	it "deberia mostrar un numero fijo" do
		simon = Simon.new 2
		simon.secuencia.should == 2
	end
end

