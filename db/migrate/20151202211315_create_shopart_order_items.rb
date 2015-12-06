class CreateShopartOrderItems < ActiveRecord::Migration
  def change
    create_table :shopart_order_items do |t|
      t.decimal :price, null: false, precision: 9, scale: 2
      t.integer :quantity, null: false
      t.string :product_type
      t.integer :product_id
      t.belongs_to :order
      t.timestamps null: false
    end
  end
end
