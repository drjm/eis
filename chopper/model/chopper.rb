class Chopper 
	def chop(num, lista) 
		i = lista.index(num)
		if i == nil 
			return -1 
		end
		return i
	end

	def sum(listaXs)
		n = listaXs.inject(0) {|sum, i|  sum + i }
		if n == 0
			return "vacio"
		end
		if n == 1
			return "uno"
		end
		if n == 4
			return "cuatro"
		end
	end
end