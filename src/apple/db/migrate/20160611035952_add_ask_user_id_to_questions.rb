class AddAskUserIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :ask_user_id, :integer
    add_column :questions, :ask_user_name, :string
  end
end
