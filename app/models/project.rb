class Project < ActiveRecord::Base
	has_one :account
	has_one :project_type
	has_many :evidences
end
