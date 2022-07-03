class CreateLibrary < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :location
      t.string :type

      t.timestamps
    end
  end
end
