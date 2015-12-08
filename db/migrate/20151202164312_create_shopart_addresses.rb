class CreateShopartAddresses < ActiveRecord::Migration
  def change
    create_table :shopart_addresses do |t|
      t.text :address
      t.string :firstname
      t.string :lastname
      t.string :zipcode
      t.string :city
      t.string :phone
      t.string :country

      t.timestamps null: false
    end
  end
end
