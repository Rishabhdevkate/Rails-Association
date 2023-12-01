class RemoveForeignFromProduct < ActiveRecord::Migration[6.0]
  def change
    remove_reference :products, :items
  end
end
