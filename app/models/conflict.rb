class Conflict < ApplicationRecord
  belongs_to :law
  has_one :complaint
end
