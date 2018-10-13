class Country < ApplicationRecord
  has_many :cities
  has_many :complainants
  has_many :migrants
end
