class RenameDobInDemo < ActiveRecord::Migration[6.0]
  def change
    rename_column :demos ,:dob ,:date_of_birth
  end
end
