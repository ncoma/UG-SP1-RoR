class Team < ActiveRecord::Base
	validates :nombre, presence: true
	validates :entranador, presence: true
	validates :uniforme, presence: true
	validates :historial, presence: true
	validates :historial, presence: true
end
