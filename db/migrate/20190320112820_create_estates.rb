class CreateEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :estates do |t|
      t.string :house, null: false
      t.integer :money, null: false
      t.string :address, null: false
      t.integer :age, null: false
      t.text :information, null: false

      t.timestamps
    end
  end
end
