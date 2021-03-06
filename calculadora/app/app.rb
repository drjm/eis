require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get 'hola' do
      'hey! hola'
    end
    
    get 'saludo' do
      render 'saludo'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end

    get 'calculadora' do
      @n_operaciones = params[:n_operaciones].to_i
      session[:n_operaciones] = @n_operaciones
      render 'calculadora'
    end

    post 'calculadora' do
      @calculadora = Calculadora.new
      @op_1 = params[:op_1]
      @op_2 = params[:op_2]
      @calculadora.set_cantidad_operaciones(session[:n_operaciones])
      if(params[:sumar])
      	res = @calculadora.sumar(@op_1.to_i, @op_2.to_i)
      end
      if(params[:restar])
      	res = @calculadora.restar(@op_1.to_i, @op_2.to_i)
      end
      if(params[:promedio])
      	res = @calculadora.promedio(@op_1.to_i, @op_2.to_i)
      end
      if(params[:reset])
      	res = @calculadora.resetear_memoria()
      end
      @resultado = res
      @n_operaciones = @calculadora.get_cantidad_operaciones()
      session[:n_operaciones] = @n_operaciones
      render 'calculadora'
    end

  end
end
