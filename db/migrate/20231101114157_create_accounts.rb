class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :bank_name
      t.string :address
      t.integer :student_id
      t.timestamps
    end
  end
end
# # scope module: :admin do
# #   resource :students ,:books
# # end
# url -/admin/student/id -----> /student/id
# # scope  :admin do
# #   resource :students ,:books
# # end
# action- admin/student#show ------>/student#show