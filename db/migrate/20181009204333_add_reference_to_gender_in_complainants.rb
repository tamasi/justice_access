class AddReferenceToGenderInComplainants < ActiveRecord::Migration[5.2]
  def change
    add_reference :complainants, :gender, foreign_key: true
  end
end
