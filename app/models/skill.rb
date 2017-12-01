class Skill < ApplicationRecord
  belongs_to :portfolio
  belongs_to :user
  belongs_to :project
  
end
