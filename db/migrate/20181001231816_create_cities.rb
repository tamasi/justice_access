class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.references :country, foreign_key: true
      t.string :city_name

      t.timestamps
    end
  end
end
