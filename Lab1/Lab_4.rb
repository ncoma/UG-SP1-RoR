class Computer
    @@users = {}
    
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}
		
		def create(name)
			if File.file?("archivox.txt")
				puts("Archivo ya existente. No se creo archivo.")
			else
				time = Time.new
				out_file = File.new(name, "w")
				out_file.puts("#{name} created at #{time}")
				out_file.close
			end
		end
		
    end
end

comp = Computer.new("ncoma", "uno")
comp.create("archivox.txt")
p File.file?("archivox.txt")