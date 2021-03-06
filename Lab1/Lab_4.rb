# UG - Pablo Miranda - 11002147
class Computer
    @@users = {}
    
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}
		
		def create(name)
			if File.file?(name)
				puts("Archivo ya existente. No se creo archivo.")
			else
				time = Time.new
				out_file = File.new(name, "w")
				out_file.puts("#{name} created at #{time}")
				@files[name] = time
				out_file.close
			end
		end
		
		def ls
			a = @files.sort
			a.length.times do |i|
				puts "#{a[i][0]} created at #{a[i][1]}"
			end
		end
		
		def rm(name)
			if File.file?(name)
				puts "#{name} eliminado."
			else
				puts("El archivo no existe.")
			end
		end
		
    end
end

#comp = Computer.new("ncoma", "uno")
#comp.create("archivox.txt")
#comp.create("zrchivox.txt")
#comp.create("qrchivox.txt")
#comp.create("brchivox.txt")
#comp.ls
#comp.rm("brchivox.txt")
