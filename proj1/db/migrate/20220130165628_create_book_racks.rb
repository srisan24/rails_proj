class CreateBookRacks < ActiveRecord::Migration[6.1]
  def change
    create_table :book_racks do |t|
      t.integer :book_id
      t.integer :library_id

      t.timestamps
    end
  end
end
