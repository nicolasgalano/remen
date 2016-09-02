Given(/^voy al sitio$/) do
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

