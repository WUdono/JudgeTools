class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|
      t.references :term, foreign_key: true
      t.references :stage, foreign_key: true
      t.references :table_estimation, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
