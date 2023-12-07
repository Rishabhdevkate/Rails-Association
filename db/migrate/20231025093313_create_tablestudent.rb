class CreateTablestudent < ActiveRecord::Migration[6.0]
  def up
    create_table :tablestudents do |t|
      t.string :name ,default: "nan" ,limit: 10
      t.integer :rollno ,default: 0
    end
  end
  def down
    drop_table :tablestudents
  end

 
end
