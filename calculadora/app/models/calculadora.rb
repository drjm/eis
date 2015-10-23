class Calculadora
  def initialize
    @cantidad_operaciones = 0
  end

  def set_cantidad_operaciones(n)
    @cantidad_operaciones = n
  end

  def get_cantidad_operaciones
    return @cantidad_operaciones
  end

  def sumar(op_1, op_2)
  	@cantidad_operaciones = @cantidad_operaciones+1
    return op_1 + op_2
  end

  def restar(op_1, op_2)
  	@cantidad_operaciones = @cantidad_operaciones+1
    return op_1 - op_2
  end

  def promedio(op_1, op_2)
  	@cantidad_operaciones = @cantidad_operaciones+1
    return (op_1 + op_2)/2
  end

  def resetear_memoria()
    @cantidad_operaciones = 0
  end
end
