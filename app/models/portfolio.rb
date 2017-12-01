class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :skills
  has_many :projects
end
