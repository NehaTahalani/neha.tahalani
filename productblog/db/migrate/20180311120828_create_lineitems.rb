class CreateLineitems < ActiveRecord::Migration[5.1]
  def change
    create_table :lineitems do |t|
      t.string :sku
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
