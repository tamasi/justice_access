class AddNativeToComplainants < ActiveRecord::Migration[5.2]
  def change
    add_reference :complainants, :native, foreign_key: true
  end
end
