class Project < ActiveRecord::Base
  has_many :skills, :as => :skill_association
  belongs_to :project_association, polymorphic: true
end
