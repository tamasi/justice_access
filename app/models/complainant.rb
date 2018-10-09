class Complainant < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  has_one :disability
end
