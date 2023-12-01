class CreateManagerHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :manager_histories do |t|
      t.string :details
      t.integer :salary
     
      t.integer :manager_id
      t.timestamps
    end
  end
end
