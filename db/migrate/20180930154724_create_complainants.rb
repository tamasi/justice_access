class CreateComplainants < ActiveRecord::Migration[5.2]
  def change
    create_table :complainants do |t|
      t.string :name
      t.string :last_name
      t.date :birthdate
      t.string :address
      t.string :nationality
      t.string :gender
      t.string :disability
      t.boolean :migrant

      t.timestamps
    end
  end
end
