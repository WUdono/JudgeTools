class CreatePlayerCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :player_competitions do |t|
      t.references :player, foreign_key: true, index: true
      t.references :competition, foreign_key: true, index: true
      t.references :attendance, foreign_key: true, index: true

      t.timestamps
    end
  end
end
