class AddNameToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items , :name ,:string
    add_column :items , :address, :string 
    add_column :items ,:age, :integer
  end
end
