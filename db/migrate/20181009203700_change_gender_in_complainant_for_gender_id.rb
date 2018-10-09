class ChangeGenderInComplainantForGenderId < ActiveRecord::Migration[5.2]
  def change
    remove_column :complainants, :gender
  end
end
