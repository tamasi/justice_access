class AddDisbilitiesToComplainants < ActiveRecord::Migration[5.2]
  def change
    remove_column :complainants, :disability
    add_reference :complainants, :disability, foreign_key: true
  end
end
