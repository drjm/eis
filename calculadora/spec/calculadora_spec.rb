require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Calculadora' do
  let(:calculadora) { Calculadora.new }	
 	 

  it 'deberia sumar 1+1 y dar 2' do
    @calculadora = Calculadora.new
    
    expect(@calculadora.sumar(1, 1)).to eq 2
  end
end
