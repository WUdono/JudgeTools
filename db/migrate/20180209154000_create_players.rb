class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :last_name
      t.string :first_name
      t.string :name
      t.belongs_to :university, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
