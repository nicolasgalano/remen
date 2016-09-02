Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

When(/^click (\d+)$/) do |numero|
	click_button(numero)
end

