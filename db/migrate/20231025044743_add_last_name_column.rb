class AddLastNameColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :demos ,:lastname ,:string
  end
end
