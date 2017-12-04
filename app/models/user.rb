class User < ActiveRecord::Base
  has_many :portfolios
  has_many :skills, :as => :skill_association
  has_many :projects, :as => :project_association

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
