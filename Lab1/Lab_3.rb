# UG - Pablo Miranda - 11002147
module Action
	def jump
		@distance = rand(4) + 2
		puts "I jumped forward #{@distance} feet!"
	end
  
	def run(v)		# velocidad en m/s
		t = 10.0 / v
		sleep(t)
		p "10 metros recorridos en un tiempo de #{t} segundos a una velocidad de #{v} m/s"
	end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  
  attr_reader :name
  
	def initialize(name)
		@name = name
	end
  
	def chirp
		num = rand(91) + 10
		num.times do
			p "Chirp... chirp!!"
		end
	end
end

#peter = Rabbit.new("Peter")
#jiminy = Cricket.new("Jiminy")

#peter.jump
#jiminy.run(100)
