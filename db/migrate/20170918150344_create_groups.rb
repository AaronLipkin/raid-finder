class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :raid_leader_id
      t.integer :raid_id
      t.string :difficulty
      t.integer :max_size
      t.string :faction
      t.timestamp :go_time

      t.timestamps
    end
  end
end
