class Calculadora
  def initialize
    @cantidad_operaciones = 0
  end

  def sumar(op_1, op_2)
  	@cantidad_operaciones = @cantidad_operaciones+1
    return op_1 + op_2
  end
end
