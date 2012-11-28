class CreateBarters < ActiveRecord::Migration
  def change
    create_table :barters do |t|
      t.integer :user_id
      t.integer :receiver_id
      t.integer :user_item_id
      t.integer :receiver_item_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
