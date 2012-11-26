class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.integer :item_type_id
      t.integer :owner_id
      t.timestamps
    end
  end
end
