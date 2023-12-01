class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string :worker_name
      t.integer :company_id
      t.timestamps
    end
  end
end
