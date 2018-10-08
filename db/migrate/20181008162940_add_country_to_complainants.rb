class AddCountryToComplainants < ActiveRecord::Migration[5.2]
  def change
    add_reference :complainants, :country, foreign_key: true
  end
end
