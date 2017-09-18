class CreateRaids < ActiveRecord::Migration[5.1]
  def change
    create_table :raids do |t|
      t.string :name
      t.integer :expansion
      t.string :difficulties
      t.string :videos
      t.string :info

      t.timestamps
    end
  end
end
