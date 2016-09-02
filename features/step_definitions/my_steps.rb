Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

When(/^Hago un click$/) do
	click_button(1)
end

When(/^Hago tres click$/) do
	click_button(1)
	click_button(2)
	click_button(1)
end

