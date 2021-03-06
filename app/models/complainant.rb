class Complainant < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  belongs_to :disability, optional: true
  belongs_to :native, optional: true
  has_one :migrant, inverse_of: :complainant

  has_many :complaints, inverse_of: :complainant

  accepts_nested_attributes_for :migrant, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :complaints, allow_destroy: true, reject_if: :all_blank

  RANGES = { indigentes: 0..11500, pobres: 11501..23000, media_baja: 23001..41500, media_alta: 41501..107000, alta: 107000..200000 }
  scope :by_social_status, ->(status){ where(salary: RANGES[status]) }

  scope :by_native, ->(native_id){ where(native_id: native_id)}

  def social_status
    case salary
    when nil
      "Sin datos"
    when 0..11500
      "Indigencia"
    when 11501..23000
      "Pobreza"
    when 23001..41500
      "Media Baja"
    when 41501..107000
      "Media Alta"
    else
      "alta"
    end
  end

  def full_name
		full_name = "#{name} #{last_name}"
	end
end
