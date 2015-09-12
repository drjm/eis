class Chopper 
	def chop(num, lista) 
		i = lista.index(num)
		if i == nil 
			return -1 
		end
		return i
	end

	def sum(listaXs)
		if listaXs == [] 
			return "vacio"
		end
		if listaXs == [1] 
			return "uno"
		end
	end
end