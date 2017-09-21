class CreateKlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :css_style
      t.timestamps
    end
  end
end
