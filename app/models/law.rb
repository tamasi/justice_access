class Law < ApplicationRecord
  belongs_to :law_category
  has_many :conflicts
end
