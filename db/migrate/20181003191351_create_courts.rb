class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.references :jurisdiction, foreign_key: true

      t.timestamps
    end
  end
end
