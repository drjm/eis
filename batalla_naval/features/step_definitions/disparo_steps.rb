Given(/^un tablero vacio$/) do
  @batalla = Batalla_naval.new
end

When(/^Disparo a la coordenada (\d+) (\d+)$/) do |arg1, arg2|
  @ret = @batalla.disparar(0, 0)
end

Then(/^disparo al agua$/) do
  expect(@ret).to eq "agua"
end

Given(/^un barco ubicado en la posicion (\d+) (\d+)$/) do |arg1, arg2|
  @batalla = Batalla_naval.new
  @batalla.poner_barco(0,0,"crucero","horizontal")
end

When(/^Disparo a la coordenad (\d+) (\d+)$/) do |arg1, arg2|
  @ret = @batalla.disparar(0, 0)
end

Then(/^acierto al barco pero no lo hundo$/) do
  expect(@ret).to eq "acierto"
end

Given(/^un barco ubicado en las coordenadas (\d+) (\d+)$/) do |arg1, arg2|
  @batalla = Batalla_naval.new
  @batalla.poner_barco(0,0,"submarino","horizontal")
end

When(/^Disparo a la coordena (\d+) (\d+)$/) do |arg1, arg2|
  @ret = @batalla.disparar(0, 0)
end

Then(/^acierto al barco y es hundido$/) do
  expect(@ret).to eq "hundido"
end
