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
      render 'calculadora'
    end

    post 'calculadora' do
      @calculadora = Calculadora.new
      @op_1 = params[:op_1]
      @op_2 = params[:op_2]
      if(params[:sumar])
      	res = @calculadora.sumar(@op_1.to_i, @op_2.to_i)
      end
      if(params[:restar])
      	res = @calculadora.restar(@op_1.to_i, @op_2.to_i)
      end
      if(params[:promedio])
      	res = @calculadora.promedio(@op_1.to_i, @op_2.to_i)
      end
      @resultado = res
      render 'calculadora'
    end

  end
end
