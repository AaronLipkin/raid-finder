class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :raid_leader_id
      t.integer :raid_id
      t.string :difficulty
      t.string :faction
      t.timestamp :go_time

      t.timestamps
    end
  end
end
