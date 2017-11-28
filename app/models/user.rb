class User < ActiveRecord::Base
  has_many :questions
  has_many :responses
  validates :name, :email, :password, :is_admin, :presence => true
  validates_uniqueness_of :email
end
