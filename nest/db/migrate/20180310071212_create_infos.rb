class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.integer :address_id
      t.string :street

      t.timestamps
    end
  end
end
