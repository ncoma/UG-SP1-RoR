class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :fecha
      t.integer :fase
      t.integer :estado
      t.integer :team_id, :references => "Team"
      t.integer :team_id_2, :references => "Team"
      t.string :marcador
      t.boolean :ganador
      t.boolean :perdedor
      t.integer :group_id
      t.integer :stadium_id

      t.timestamps
    end
  end
end
