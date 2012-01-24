class CreateCustodians < ActiveRecord::Migration
  def change
    create_table :custodians do |t|
      t.string :name

      t.timestamps
    end
  end
end
