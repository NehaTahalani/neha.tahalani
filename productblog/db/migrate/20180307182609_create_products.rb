class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.integer :quantity
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :weight
      t.decimal :price
      t.integer :category_id

      t.timestamps
    end
  end
end
