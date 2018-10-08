class RemoveColumnNationalityInComplainants < ActiveRecord::Migration[5.2]
  def change
    remove_column :complainants, :nationality
  end
end
