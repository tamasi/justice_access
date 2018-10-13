class Location < ApplicationRecord
  belongs_to  :city
  has_one :jurisdiction
  has_many :natives
end
