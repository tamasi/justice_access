class AddIsoToCountry < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :iso, :string, :size => 2
  end
end
