class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.blob :profile
      t.timestamps
    end
  end
end
