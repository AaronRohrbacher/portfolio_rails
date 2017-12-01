class Project < ApplicationRecord
  has_many :skills
  belongs_to :portfolio
  belongs_to :user
end
