class CreateLedgers < ActiveRecord::Migration[5.1]
  def change
    create_table :ledgers do |t|
      t.references :group, foreign_key: true
      t.references :character, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
