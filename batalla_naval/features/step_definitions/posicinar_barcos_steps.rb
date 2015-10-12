Given(/^la posicion (\d+) (\d+) esta vacia$/) do |x, y|
  @batalla_naval = Batalla_naval.new
end

When(/^ubico un submarino$/) do
  @batalla_naval.poner_barco('a3', "destructor", "horizontal")

Then(/^posiciono el barco en el tablero$/) do
  @estado_celda_a3 = @batalla_naval.consultar_estado_en('a3')
  @estado_celda_a4 = @batalla_naval.consultar_estado_en('a4')
  @estado_celda_a5 = @batalla_naval.consultar_estado_en('a5')

  expect(@estado_celda_a3).to eq 'ocupada'
  expect(@estado_celda_a4).to eq 'ocupada'
  expect(@estado_celda_a5).to eq 'ocupada'
end

Given(/^en la posicion (\d+) (\d+) esta ocupada$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^intento ubicar un barco en esa posicion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^posicion ocupada no se puede ubicar el barco$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^en la posicion (\d+) (\d+) esta fuera del tablero$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^intento posicionar una barco en esa posicion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^fallo al ubicar el barco, desborde en ubicacion del barco$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

