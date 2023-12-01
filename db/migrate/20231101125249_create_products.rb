class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
    t.string :name
    t.string :details
    t.integer :customer_id
      t.timestamps
    end
  end
end
