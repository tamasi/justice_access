class AddIsoToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :iso, :string, :size => 2
  end
end
