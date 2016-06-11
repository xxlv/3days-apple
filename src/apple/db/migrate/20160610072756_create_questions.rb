class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :author_id
      t.string :author_name

      t.timestamps null: false
    end
  end
end
