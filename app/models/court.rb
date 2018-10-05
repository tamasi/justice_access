class Court < ApplicationRecord
  belongs_to :jurisdiction
  belongs_to :city
end
