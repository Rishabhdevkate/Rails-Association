class RemoveColumnFromDemos < ActiveRecord::Migration[6.0]
  def change
    remove_column :demos ,:age
  end
end
