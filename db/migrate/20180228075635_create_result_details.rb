class CreateResultDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :result_details do |t|
      t.references :result, foreign_key: true, index: true
      t.references :player, foreign_key: true, index: true
      t.references :judge, foreign_key: true, index: true
      t.references :table_role, foreign_key: true, index: true
      t.integer :ranking
      t.integer :feeling_ranking
      t.integer :q
      t.integer :c1
      t.integer :c2
      t.integer :s1
      t.integer :s2
      t.integer :s3
      t.integer :a1
      t.integer :a2
      t.integer :a3
      t.integer :attitude_point
      t.integer :statement_count
      t.integer :point
      t.integer :occupancy_rate

      t.timestamps
    end
  end
end
