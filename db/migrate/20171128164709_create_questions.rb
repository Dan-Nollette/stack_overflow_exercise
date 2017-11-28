class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :question_text, :string
      t.column :vote, :integer
      t.column :user_id, :integer
      t.timestamp
    end
  end
end
