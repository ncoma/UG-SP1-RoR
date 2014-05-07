class Team < ActiveRecord::Base
	validates :nombre, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}, uniqueness: true
	validates :entrenador, presence: true, uniqueness: true
	validates :uniforme, presence: true
	validates :bandera, presence: true
	validates :historial, presence: true, length: {minimum: 15, maximum: 200}
	validate :url_bandera, :url_uniforme
	
	def url_bandera
		url = URI.parse(bandera) rescue false
		url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
	end 
	
	def url_uniforme
		url = URI.parse(uniforme) rescue false
		url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
	end 
	
end
