class City < ApplicationRecord
  belongs_to :country
  has_many :locations
  has_many :jurisdiction, :through => :locations
  has_many :migrants

  scope :argentina, -> { where(country_id: 10).order(:city_name) }
end
