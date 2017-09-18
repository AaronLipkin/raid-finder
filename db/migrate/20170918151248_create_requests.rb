class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :group_id
      t.integer :character_id

      t.timestamps
    end
  end
end
