class AddStausToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :status, :integer
    add_column :questions, :is_public, :integer
  end
end
