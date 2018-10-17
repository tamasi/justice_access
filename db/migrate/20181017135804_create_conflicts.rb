class CreateConflicts < ActiveRecord::Migration[5.2]
  def change
    create_table :conflicts do |t|
      t.string :name
      t.references :law, foreign_key: true

      t.timestamps
    end
  end
end
