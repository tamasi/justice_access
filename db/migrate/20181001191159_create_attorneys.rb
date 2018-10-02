class CreateAttorneys < ActiveRecord::Migration[5.2]
  def change
    create_table :attorneys do |t|
      t.string :name
      t.integer :licence

      t.timestamps
    end
  end
end
