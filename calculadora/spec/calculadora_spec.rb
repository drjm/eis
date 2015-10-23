require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }	
 	 

  it 'deberia sumar 1+1 y dar 2' do
    @calculadora = Calculadora.new
    
    expect(@calculadora.sumar(1, 1)).to eq 2
  end

  it 'deberia restar 2-2 y dar 0' do
    @calculadora = Calculadora.new
    
    expect(@calculadora.restar(2, 2)).to eq 0
  end

  it 'deberia promediar 10,2 y dar 6' do
    @calculadora = Calculadora.new
    
    expect(@calculadora.promedio(10, 2)).to eq 6
  end

  it 'opero 3 veces y cantidad de operaciones deberia dar 3' do
    @calculadora = Calculadora.new
    @calculadora.promedio(10, 2)
    @calculadora.promedio(10, 2)
    @calculadora.promedio(10, 2)
    expect(@calculadora.get_cantidad_operaciones).to eq 3
  end

  it 'opero 3 veces y reseteo' do
    @calculadora = Calculadora.new
    @calculadora.promedio(10, 2)
    @calculadora.promedio(10, 2)
    @calculadora.promedio(10, 2)
    @calculadora.resetear_memoria
    expect(@calculadora.get_cantidad_operaciones).to eq 0
  end



end
