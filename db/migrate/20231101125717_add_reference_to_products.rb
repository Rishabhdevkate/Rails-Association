class AddReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :customers
  end
end
