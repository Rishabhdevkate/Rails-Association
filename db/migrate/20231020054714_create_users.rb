class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users , primary_key: 'user_id' do |t|
      t.string :first_name
      t.string :last_name
      t.string :deparment
      
      t.timestamps
    end
  end
end
