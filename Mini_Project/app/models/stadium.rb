class Stadium < ActiveRecord::Base
	validates :nombre, presence: true, uniqueness: true
	validates :ciudad, presence: true, uniqueness: true
	validates :fecha, presence: true
	validates :capacidad, presence: true, :numericality => { :greater_than => 0 }
	validates :foto, presence: true
	validate :ciudades, :url_valid

	def ciudades
		if (ciudad == "Belo Horizonte" || ciudad == "Brasilia" || ciudad == "Cuiaba" || ciudad == "Curitiba" || ciudad == "Fortaleza" || ciudad == "Manaus" || ciudad == "Natal" || ciudad == "Recife" || ciudad == "Rio de Janeiro" || ciudad == "Salvador" || ciudad == "Sao Paulo")
			errors.add(:ciudad, "Ciudad no valida.")
		end
	end
	
	def url_valid
		url = URI.parse(foto) rescue false
		url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
	end 
	
end
