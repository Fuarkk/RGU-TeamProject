class Budget < ApplicationRecord

  validates :code, length: { maximum: 5  }
  validates :name, length: { maximum: 20 }

  belongs_to :departments, optional: true

end
