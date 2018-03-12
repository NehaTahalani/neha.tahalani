class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.text :line_1
      t.text :line_2
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :postal_code
      t.integer :user_id

      t.timestamps
    end
  end
end
