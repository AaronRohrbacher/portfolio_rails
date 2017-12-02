class User < ActiveRecord::Base
  has_many :portfolios
  has_many :skills
  has_many :projects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
