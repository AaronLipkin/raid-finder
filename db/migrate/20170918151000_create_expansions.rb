class CreateExpansions < ActiveRecord::Migration[5.1]
  def change
    create_table :expansions do |t|
      t.string :name
      t.string :color_list
      t.integer :release_order

      t.timestamps
    end
  end
end
