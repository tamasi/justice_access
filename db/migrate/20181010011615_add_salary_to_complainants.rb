class AddSalaryToComplainants < ActiveRecord::Migration[5.2]
  def change
    add_column :complainants, :salary, :decimal
  end
end
