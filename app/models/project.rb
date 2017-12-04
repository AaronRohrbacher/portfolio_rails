class Project < ActiveRecord::Base
  has_many :skills
  belongs_to :project_association, polymorphic: true
end
