FactoryBot.define do
  factory(:user) do
    name('Richa')
    email('richa.shaurabh@gmail.com')
    password('richa123')
    password_confirmation('richa123')
  end

  factory(:question) do
    user
    title('test')
    question_text('dummy text')
    vote(0)
  end

  factory(:response) do
    question
    association :user, factory: :user, name: "Test", email: "test@test.com"
    response_text('dummy response')
  end
end
