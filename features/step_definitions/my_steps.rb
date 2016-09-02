Given(/^voy al sitio$/) do
	@@simon = Simon.new [1,2,1]
	visit '/'
end

Then(/^veo "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

When(/^click (\d+)$/) do |numero|
	click_button(numero)
end

When(/^apreto "(.*?)"$/) do |texto|
	click_link(texto)
end

Then(/^no veo "(.*?)"$/) do |texto|
	last_response.body.should_not =~ /#{texto}/m
end

Given(/^voy a "(.*?)"$/) do |pantalla|
	@@simon = Simon.new [1,2,1]
	visit '/'
	click_link(pantalla)
end

Given(/^Gano$/) do
	@@simon = Simon.new [1,2,1]
	visit '/'
	click_link("Turno")
	click_button(1)	
	click_button(2)
	click_button(1)		
end

When(/^apreto "(.*?)" y el siguiente valor es (\d+)$/) do |texto, numero|
	@@simon.secuencia.push 2
	click_link(texto)
	@@simon.secuencia.pop
end

Given(/^No gane todavia$/) do
	@@simon = Simon.new [1,2,1]
	visit '/'
	click_link("Turno")
	click_button(1)		
end

Then(/^vuelvo a una cadena de (\d+)$/) do |longitud|
	@@simon.secuencia.count.should == longitud.to_i
end

When(/^click Turno$/) do
	click_link("Turno")
end

