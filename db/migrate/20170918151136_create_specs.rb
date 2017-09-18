class CreateSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :specs do |t|
      t.string :name
      t.string :role
      t.integer :klasse_id

      t.timestamps
    end
  end
end
