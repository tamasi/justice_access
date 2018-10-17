class CreateLaws < ActiveRecord::Migration[5.2]
  def change
    create_table :laws do |t|
      t.string :name
      t.references :law_category, foreign_key: true

      t.timestamps
    end
  end
end
