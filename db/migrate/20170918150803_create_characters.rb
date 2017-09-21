class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :user_id
      t.integer :klasse_id
      t.integer :spec_id
      t.integer :item_level
      t.string :faction
      t.string :armory
      t.string :server

      t.timestamps
    end
  end
end
