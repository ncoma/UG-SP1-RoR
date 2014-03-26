# encoding: utf-8
module RubyModule
	def palindromo?(str)
		s = str.gsub(/\W/,nil.to_s).downcase
		s == s.reverse
	end
	
	def cuenta_palabras(str)
		words = str.split(/\W+/)
		h = Hash.new(0)
		words.each {|v| h[v] +=1 }
		h
	end
	
	def hanoi(disc, src, hlp, dst)
		if disc > 0
			hanoi(disc-1, src, dst, hlp)
			puts "moving disc "+disc.to_s+" from #{src} to #{dst}"
			hanoi(disc-1, hlp, src, dst)
		end
	end
	
	def sort(b, asc)		# ordena numeros
	a = b.dup
	a.each{	
		t = a.length.-1
		t.times do |i|
			if(a[i+1] < a[i])
				aux = a[i]
				a[i] = a[i+1]
				a[i+1] = aux
			end
		end
	b
	}
	end
	
	def char_count(s,c)
		cont = 0
		s.length.times do |i|
			if( s[i] == c)
				cont += 1
			end
		end
		cont
	end
	
	def atoi(s)
		num = 0
		acc = 0
		s.length.downto(0) { |i|
			if s[i] == '0'
				num = 0
			elsif s[i] == '1'
				num = 1
			elsif s[i] == '2'
				num = 2
			elsif s[i] == '3'
				num = 3
			elsif s[i] == '4'
				num = 4
			elsif s[i] == '5'
				num = 5
			elsif s[i] == '6'
				num = 6
			elsif s[i] == '7'
				num = 7
			elsif s[i] == '8'
				num = 8
			elsif s[i] == '9'
				num = 9
			elsif s[i] == '-' && i == 0
				num = 0
					acc *= -1
				elsif s[i] == nil || (s[i] == '+' && i == 0)			# ignoro nil y solo acepto el signo + al inicio
				num = 0
			else
				abort("No se ingreso un número válido.")
			end
			if num > 0
				acc += num * 10** (s.length-1-i)		# sumar
			end
		}
		acc		# retorno la suma de todos
	end
end

class Test
	include RubyModule
	
	def testPalindromo
		palindromo?('A man, a plan, a canal - Panama')
	end
end

test = Test.new
#puts test.testPalindromo
#puts test.cuenta_palabras("Aqui se repite repite dos veces y se tambien");
#puts test.hanoi(3,0,1,2);
#a = [3,7,2,1]
#print test.sort(a, true)
#print(a)
#puts test.char_count("abcabca",'a');
#puts test.atoi("-10582")