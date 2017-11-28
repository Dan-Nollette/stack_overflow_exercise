class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :question 
  validates :response_text, :question_id, :user_id, :presence => true
end
