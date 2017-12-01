class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :portfolio
end
