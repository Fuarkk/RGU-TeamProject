class Staff < ApplicationRecord
  validates :name,     length: { maximum: 20 }
  validates :address,  length: { maximum: 20 }
  validates :postcode, length: { maximum: 8  }
  validates :email,    length: { maximum: 30 }
  validates :jobTitle, length: { maximum: 20 }

  belongs_to :manager, optional: true

  has_and_belongs_to_many :extra_duties

  has_and_belongs_to_many :staff_types
  has_and_belongs_to_many :departments

  has_and_belongs_to_many :contracts

end
