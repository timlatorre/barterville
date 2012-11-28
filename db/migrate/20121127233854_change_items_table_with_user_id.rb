class ChangeItemsTableWithUserId < ActiveRecord::Migration
  def change
      change_table :items do |t|
      t.remove :owner_id
      t.integer :user_id
    end
  end
end

