class AddProjectToEvidences < ActiveRecord::Migration
	def self.up
		add_column :evidences, :project_id, :int
	end 
	def self.down
		remove_column :evidences, :project_id
	end
end