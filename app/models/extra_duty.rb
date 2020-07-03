class ExtraDuty < ApplicationRecord
  validates :title, length: { maximum: 30 }

  has_and_belongs_to_many :staff, optional: true
end
