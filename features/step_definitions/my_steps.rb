Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

Given(/^secuencia es (\d+)$/) do |numero|
	secuencia = "Secuencia: "+numero
	last_response.body.should =~ /#{secuencia}/m
end

When(/^click (\d+)$/) do |numero|
	click_button(numero)
end

