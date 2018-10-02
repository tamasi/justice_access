class AddLastNameToAttorneys < ActiveRecord::Migration[5.2]
  def change
    add_column :attorneys, :last_name, :string
  end
end
