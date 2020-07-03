class Budget < ApplicationRecord

  validates :name, length: { maximum: 20 }

  belongs_to :departments, optional: true

end
