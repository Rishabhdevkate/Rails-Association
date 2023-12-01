class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :article_name
      t.string :article_type

      t.timestamps
    end
  end
end
