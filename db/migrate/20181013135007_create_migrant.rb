class CreateMigrant < ActiveRecord::Migration[5.2]
  def change
    create_table :migrants do |t|
      t.references :complainant, foreign_key: true
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true
    end
  end
end
