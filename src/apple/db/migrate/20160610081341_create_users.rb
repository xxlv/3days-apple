class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :sex
      t.string :intruduce
      t.string :area_intruduce
      t.float :ask_money
      t.string :qcode
      t.string :avatar
      t.string :email
      t.string :password
      t.string :username

      t.timestamps null: false
    end
  end
end
