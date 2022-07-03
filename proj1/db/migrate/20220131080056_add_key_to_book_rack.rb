class AddKeyToBookRack < ActiveRecord::Migration[6.1]
  def change
    change_column :book_racks, :book_id, :bigint
    add_foreign_key :book_racks,:books
  end
end
