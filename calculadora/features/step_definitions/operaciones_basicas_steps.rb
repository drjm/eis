Given(/^un operando es (\d+)$/) do |arg1|
  visit 'calculadora'
  fill_in 'op_1', with: 1
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'op_2', with: 2
end

When(/^los sumo$/) do
  click_button('Sumar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content(3)
end

Given(/^un operand es (\d+)$/) do |arg1|
  visit 'calculadora'
  fill_in 'op_1', with: 2
end

Given(/^otro operand es (\d+)$/) do |arg1|
  fill_in 'op_2', with: 2
end

When(/^los resto$/) do
  click_button('Restar')
end

Then(/^el resultad es (\d+)$/) do |arg1|
  expect(page).to have_content(0)
end

Given(/^un operan es (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^otro operan es (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^los promedio$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^el resulta es (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end



