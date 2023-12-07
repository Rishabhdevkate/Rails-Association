class CreateJoinuserdemo < ActiveRecord::Migration[6.0]
  def change
    create_table :joinuserdemos do |t|
      t.references :users
      t.references :demos
    end
  end
end
