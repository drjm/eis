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
		s = n.to_s
		if n > 99
			return "demasiado grande"
		else
			if n>9			
				s1 = s[0]
				s2 = s[1]
				print_string(s1) <<","<< print_string(s2)
			else
				if listaXs == []
					return "vacio"
				else
					print_string(s)
				end
			end
		end
	end

	def print_string(print_s)
		if print_s == "0"
			return "cero"
		end
		if print_s == "1"
			return "uno"
		end
		if print_s == "4"
			return "cuatro"
		end
		if print_s == "8"
			return "ocho"
		end
		if print_s == "9"
			return "nueve"
		end
	end
end