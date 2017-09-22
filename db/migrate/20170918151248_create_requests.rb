class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :group_id
      t.integer :character_id
      t.string :role
      t.integer :spec_id
      t.string :note
      t.string :status

      t.timestamps
    end
  end
end
