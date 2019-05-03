class CreateStation2s < ActiveRecord::Migration[5.0]
  def change
    create_table :station2s do |t|
      t.string :rail, null: false
      t.string :name, null: false
      t.integer :walk, null: false
      t.references :estate, foreign_key: true

      t.timestamps
    end
  end
end
