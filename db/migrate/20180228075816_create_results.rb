class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.references :competition, foreign_key: true, index: true
      t.references :rank, foreign_key: true, index: true
      t.integer :table_number
      t.integer :degree_of_progress
      t.integer :table_point

      t.timestamps
    end
  end
end
