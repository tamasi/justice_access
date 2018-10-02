class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :cp
      t.string :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
