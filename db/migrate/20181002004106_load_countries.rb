class LoadCountries < ActiveRecord::Migration[5.2]
  def change
    # load
    require File.expand_path('../../seed/state_country_seeds.rb', __FILE__)
  end
end
