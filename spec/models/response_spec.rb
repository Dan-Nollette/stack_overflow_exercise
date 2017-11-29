require 'rails_helper'

describe Response do
  it { should belong_to :user }
  it { should belong_to :question }
  it { should validate_presence_of :response_text }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }
  it 'should show new title' do
    user = FactoryBot.create(:user)
    question = FactoryBot.create(:question, :user_id => user.id)
    response = FactoryBot.create(:response, :response_text => "new response text", :question_id => question.id)
    response.response_text.should eq "new response text"
  end
end
