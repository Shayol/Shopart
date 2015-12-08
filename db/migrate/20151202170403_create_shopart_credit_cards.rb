class CreateShopartCreditCards < ActiveRecord::Migration
  def change
    create_table :shopart_credit_cards do |t|
      t.text :number
      t.text :expiration_year
      t.text :expiration_month
      t.text :firstname
      t.text :lastname
      t.text :CVV
      t.belongs_to :customer, polymorphic: true
      t.belongs_to :order
      t.timestamps null: false
    end
  end
end
