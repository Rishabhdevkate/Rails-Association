class AddColumnToDemo < ActiveRecord::Migration[6.0]
  def change
    add_column :demos ,:dob ,:date 
    add_column :demos ,:age ,:integer
    add_column :demos ,:address ,:string
    add_column :demos ,:right, :boolean ,default: false
  end
end
