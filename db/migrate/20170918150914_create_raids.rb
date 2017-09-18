class CreateRaids < ActiveRecord::Migration[5.1]
  def change
    create_table :raids do |t|
      t.string :name
      t.integer :expansion_id
      t.string :difficulties, array:true, default: []
      t.string :videos, array:true, default: []
      t.string :info

      t.timestamps
    end
  end
end
