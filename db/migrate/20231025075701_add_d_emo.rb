class AddDEmo < ActiveRecord::Migration[6.0]
  def change
    add_column :demos, :place,:string
    add_column :demos, :location,:string
  end
end
