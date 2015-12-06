class CreateShopartOrders < ActiveRecord::Migration
  def change
    create_table :shopart_orders do |t|
      t.decimal :total_price, null: false, default: 0
      t.datetime :completed_date
      t.string :state, null: false, default: "in_progress"
      t.belongs_to :customer, polymorphic: true
      t.integer :billing_address_id
      t.integer :shipping_address_id
      t.belongs_to :delivery

      t.timestamps null: false
    end
  end
end
