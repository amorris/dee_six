class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :account_id
      t.integer :project_type_id
      t.integer :serial_number
      t.string :name

      t.timestamps
    end
  end
end
