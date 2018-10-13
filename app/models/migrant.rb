class Migrant < ApplicationRecord
  belongs_to :country
  belongs_to :city
  belongs_to :complainant

end