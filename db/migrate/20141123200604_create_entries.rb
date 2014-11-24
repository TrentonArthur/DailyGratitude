class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :text
      t.integer :owner_id
      t.string :image

      t.timestamps

    end
  end
end
