class CreateStones < ActiveRecord::Migration
  def change
    create_table :stones do |t|
      t.string :name
      t.decimal :price, null: false, precision: 9, scale: 2

      t.timestamps null: false
    end
  end
end
