class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.references :conflict, foreign_key: true
      t.references :complainant, foreign_key: true
      t.references :instittution, foreign_key: true
      t.references :court, foreign_key: true
      t.boolean :cost_free_attorney

      t.timestamps
    end
  end
end
