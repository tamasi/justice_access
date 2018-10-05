class Jurisdiction < ApplicationRecord
  belongs_to :location
  has_many :courts
end
