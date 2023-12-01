class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :news_type
      t.string :location
      t.timestamps
    end
  end
end
