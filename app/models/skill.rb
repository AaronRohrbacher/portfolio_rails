class Skill < ActiveRecord::Base
  belongs_to :skill_association, polymorphic: true
end
