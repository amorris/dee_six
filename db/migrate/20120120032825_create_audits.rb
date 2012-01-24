class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.integer :audit_type_id
      t.string :audit_info

      t.timestamps
    end
  end
end
