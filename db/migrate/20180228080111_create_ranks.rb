class CreateRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :ranks do |t|
      t.string :name
      t.references :layer, foreign_key: true, index: true

      t.timestamps
    end
  end
end
