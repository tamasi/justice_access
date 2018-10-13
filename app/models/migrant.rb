class Migrant < ApplicationRecord
  belongs_to :country
  belongs_to :city
  belongs_to :complainant, inverse_of: :migrant

end