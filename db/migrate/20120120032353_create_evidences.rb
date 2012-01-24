class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.integer :serial_number
      t.integer :custodian_id
      t.integer :parent_evidence_id
      t.integer :evidence_type_id

      t.timestamps
    end
  end
end
