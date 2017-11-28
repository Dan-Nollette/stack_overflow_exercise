require 'rails_helper'

describe Question do
  it { should have_many :responses }
  it { should belong_to :user }
  it { should validate_presence_of :title }
  it { should validate_presence_of :question_text }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :vote }
  it { should validate_uniqueness_of :title }
end
