Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaiones es (\d+)$/) do |arg1|
  expect(page).to have_content(0)
end

Given(/^hago una suma$/) do
  visit 'calculadora'
  fill_in 'op_1', with: 1
  fill_in 'op_2', with: 2
  click_button('Sumar')
end

Given(/^hago una resta$/) do
  fill_in 'op_1', with: 1
  fill_in 'op_2', with: 2
  click_button('Restar')
end

Then(/^la cantidad de operaion es (\d+)$/) do |arg1|
  expect(page).to have_content(2)
end

Given(/^hago una sum$/) do
  visit 'calculadora'
  fill_in 'op_1', with: 1
  fill_in 'op_2', with: 2
  click_button('Sumar')
end

Given(/^hago una rest$/) do
  fill_in 'op_1', with: 1
  fill_in 'op_2', with: 2
  click_button('Restar')
end

Given(/^reseteo la memoria$/) do
  click_button('Reset Contador')
end

Then(/^la cantidad de operaio es (\d+)$/) do |arg1|
  expect(page).to have_content(0)
end
