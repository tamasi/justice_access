class Complaint < ApplicationRecord
  belongs_to :conflict
  belongs_to :complainant, inverse_of: :complaints
  belongs_to :instittution
  belongs_to :court

  accepts_nested_attributes_for :complainant, reject_if: :all_blank

end
