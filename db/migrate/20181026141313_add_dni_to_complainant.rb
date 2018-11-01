class AddDniToComplainant < ActiveRecord::Migration[5.2]
  def change
    add_column :complainants, :dni, :integer
  end
end
