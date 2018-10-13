class CreateNatives < ActiveRecord::Migration[5.2]
  def change
    create_table :natives do |t|
      t.string :name
      t.references :locations, foreign_key: true

      t.timestamps
    end
  end
end
