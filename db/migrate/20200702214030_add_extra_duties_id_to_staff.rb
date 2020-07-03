class AddExtraDutiesIdToStaff < ActiveRecord::Migration[5.1]
  def change
    add_reference :staff, :extra_duties, foreign_key: true
    add_reference :staff, :staff_types, foreign_key: true
    add_reference :staff, :manager, foreign_key: true
    add_reference :staff, :contracts, foreign_key: true


  end
end
