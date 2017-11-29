class Question < ActiveRecord::Base
  attr_accessor(:user_id)
  has_many :responses
  belongs_to :user
  validates :title, :question_text, :vote, :user_id, :presence => true
  validates_uniqueness_of :title
end
