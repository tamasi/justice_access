class Court < ApplicationRecord
  belongs_to :jurisdiction
  # belongs_to :city
  has_many :complaints
end
