class Complainant < ApplicationRecord
  belongs_to :country
  belongs_to :gender
  belongs_to :disability
  belongs_to :native
  has_one :migrant, inverse_of: :complainant

  accepts_nested_attributes_for :migrant

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
end
