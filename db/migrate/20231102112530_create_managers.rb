class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :age
      t.integer :department_id
      t.timestamps
    end
  end
end
