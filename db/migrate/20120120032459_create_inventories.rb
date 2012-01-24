class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :inventory_type_id
      t.string :serial_number
      t.string :location

      t.timestamps
    end
  end
end
