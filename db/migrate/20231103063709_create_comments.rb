class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.string :comment_nature
      t.timestamps
    end
  end
end
