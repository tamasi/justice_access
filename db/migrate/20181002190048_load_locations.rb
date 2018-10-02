class LoadLocations < ActiveRecord::Migration[5.2]
  def change
    # load
    require File.expand_path('../../seed/city_localtions_seeds.rb', __FILE__)
  end
end
