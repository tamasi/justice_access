class Complaint < ApplicationRecord
  belongs_to :conflict
  belongs_to :complainant, inverse_of: :complaints
  belongs_to :instittution
  belongs_to :court
end
