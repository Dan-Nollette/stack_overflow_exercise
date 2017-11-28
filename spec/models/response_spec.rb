require 'rails_helper'

describe Response do
  it { should belong_to :user }
  it { should belong_to :question }
  it { should validate_presence_of :response_text }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }
end
