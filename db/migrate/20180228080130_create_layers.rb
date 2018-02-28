class CreateLayers < ActiveRecord::Migration[5.0]
  def change
    create_table :layers do |t|
      t.string :name

      t.timestamps
    end
  end
end
