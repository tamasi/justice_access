class Native < ApplicationRecord
  belongs_to :location
  has_many :complainants
end
