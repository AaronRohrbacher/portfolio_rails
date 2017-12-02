class Portfolio < ActiveRecord::Base
  belongs_to :user
  has_many :skills
  has_many :projects
end
