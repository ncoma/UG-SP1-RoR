class Match < ActiveRecord::Base
	validates :fecha, presence: true, uniqueness: {:scope => :stadium_id, message: "Mismo estadio en misma fecha."}
	validates_date_of :fecha
	validates :fase, presence: true
	validates :estado, presence: true, format: { with: /\A[0-4]\z/, message: "Estado no valido"}
	validates :team_id, presence: true, uniqueness: {:scope => :fecha, message: "Local no puede jugar dos partidos en la misma fecha"}
	validates :team_id_2, presence: true, uniqueness: {:scope => :fecha, message: "Visitante no puede jugar dos partidos en la misma fecha"}
	validates :marcador, presence: true, format: { with: /\A[0-9][-][0-9]\z/, message: "Marcador no valido"}
	validates :ganador, presence: true
	validates :perdedor, presence: true
	validates :group_id, presence: true, format: { with: /\A[0-2]\z/, message: "Grupo no valido"}
	validates :stadium_id, presence: true
	validate :different_teams

	def different_teams
		if team_id == team_id_2
			errors.add(:team_id, "Equipo local y visitante debe ser diferente.")
		end
	end
end

 