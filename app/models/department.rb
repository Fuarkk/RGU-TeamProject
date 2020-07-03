class Department < ApplicationRecord
  validates :code,    length: { maximum: 30 }

  has_and_belongs_to_many :staff, optional: true

  has_many :budgets
end
