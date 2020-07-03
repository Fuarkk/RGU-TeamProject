class Department < ApplicationRecord
  has_and_belongs_to_many :staff, optional: true

  has_many :budgets
end
