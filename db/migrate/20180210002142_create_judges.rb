class CreateJudges < ActiveRecord::Migration[5.0]
  def change
    create_table :judges do |t|
      t.string :last_name
      t.string :first_name
      t.references :university, foreign_key:true, index: true
      t.references :role, foreign_key: true, index: true
      t.integer :passsword
      t.timestamps
    end
  end
end
