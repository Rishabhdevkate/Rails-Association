class ChangesinexistingTable < ActiveRecord::Migration[6.0]
 reversible do |dir|
  dir.up do
    add_column :users ,:address ,:string
  end
  dir.down do
    remove_column :users ,:address
  end
 end
end
