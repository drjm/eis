require_relative '../../model/batalla_naval'

Given(/^la posicion (\d+) (\d+) esta vacia$/) do |arg1, arg2|
  @batalla = Batalla_naval.new
end

When(/^ubico un crucero en forma horizontal$/) do
  @batalla.poner_barco(0, 0, "crucero", "horizontal")
end

Then(/^posiciono el barco en el tablero$/) do
  expect(@batalla.get_tablero[[0,0]]).to eq "ocupado"
  expect(@batalla.get_tablero[[1,0]]).to eq "ocupado"
end

Given(/^en la posicion (\d+) (\d+) esta ocupada$/) do |arg1, arg2|
  @batalla = Batalla_naval.new
  @batalla.poner_barco(0, 0, "crucero", "horizontal")
end

When(/^intento ubicar un barco en esa posicion$/) do
  begin
    @batalla.poner_barco(0, 0, "crucero", "horizontal")
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^posicion ocupada no se puede ubicar el barco$/) do
  expect(@excepcion.message).to eq 'posición ya ocupada'
end

Given(/^en la posicion g(\d+) esta fuera del tablero$/) do |arg1|
   @batalla = Batalla_naval.new
end

When(/^intento posicionar una barco en esa posicion$/) do
  begin
    @batalla.poner_barco(111, 111, "crucero", "horizontal")
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^fallo al ubicar el barco, desborde en ubicacion del barco$/) do
  expect(@excepcion.message).to eq 'posicion fuera del tablero'
end
