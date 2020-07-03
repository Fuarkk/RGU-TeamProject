class Contract < ApplicationRecord
  validates :post,            length: { maximum: 20 }
  validates :grade,           length: { maximum: 2  }
  validates :probationStatus, length: { maximum: 20 }

  belongs_to :staff, optional: true
end
