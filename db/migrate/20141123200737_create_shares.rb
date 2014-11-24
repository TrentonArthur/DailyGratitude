class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :share_owner
      t.integer :share_with
      t.integer :entry_id

      t.timestamps

    end
  end
end
