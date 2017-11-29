require 'rails_helper'

describe User do
  it { should have_many :questions }
  it { should have_many :responses }
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it 'should show new name' do
    user = FactoryBot.create(:user, :name => "Dan")
    user.name.should eq "Dan"
  end
end
