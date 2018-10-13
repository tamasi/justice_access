class ChageIndexToNatives < ActiveRecord::Migration[5.2]
  def change
    remove_column :natives, :locations_id
    add_reference :natives, :location, foreign_key: true
    
  end
end
